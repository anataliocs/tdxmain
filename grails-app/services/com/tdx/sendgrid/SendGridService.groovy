package com.tdx.sendgrid

import com.sendgrid.SendGrid
import com.sendgrid.SendGridException
import com.tdx.SubjectsEnum
import com.tdx.WebMsg
import grails.transaction.Transactional
import org.springframework.context.i18n.LocaleContextHolder as LCH

@Transactional
class SendGridService {

    def grailsApplication

    def messageSource

    def sendEmail(String name, String respondToEmail, String subject, String message) {

        Boolean success = true;

        SendGrid sendgrid = new SendGrid(
                (java.lang.String) grailsApplication.config.grails.tdx.sendgrid.user,
                (java.lang.String) grailsApplication.config.grails.tdx.sendgrid.pw);

        SendGrid.Email email = new SendGrid.Email();

        String emailToAddress;
        String presidentEmail = messageSource.getMessage("tdx.labels.officer.email.president", null, "", LCH.getLocale());
        String technicalEmail = messageSource.getMessage("tdx.labels.techcontact.email", null, "", LCH.getLocale());

        //Set email from messages.properties based on subject
        switch (subject) {
            case SubjectsEnum.TECHNICAL.toString():
                emailToAddress = technicalEmail;
                break;
            case SubjectsEnum.FUNDRAISING.toString():
                emailToAddress = messageSource.getMessage("tdx.labels.officer.email.fundraising", null, "", LCH.getLocale());
                break;
            case SubjectsEnum.PHILANTHROPY.toString():
                emailToAddress = messageSource.getMessage("tdx.labels.officer.email.philanthropy", null, "", LCH.getLocale());
                break;
            case SubjectsEnum.SOCIAL.toString():
                emailToAddress = messageSource.getMessage("tdx.labels.officer.email.social", null, "", LCH.getLocale());
                break;
        }

        email.addTo(emailToAddress);

        String[] ccList = new String[2];
        ccList[0] = technicalEmail;
        ccList[1] = presidentEmail;
        email.addCc(ccList);


        email.addToName("Rho Triton Alumni Association");
        email.setFrom("info@tdxvcu.com");
        email.setSubject("[WEBMSG-TDXPT-" + subject + "] " + "Message from: " + name);

        String body = """\

            Please respond to the following inquiry using the information notated below: <br/><br/>

            <strong>Name:</strong> ${name} <br/><br/>
            <strong>Email:</strong> ${respondToEmail} <br/><br/>
            <strong>Subject:</strong> ${subject} <br/><br/>
            <strong>Message:</strong> ${message} <br/><br/>
            """;

        email.setHtml(body);

        SendGrid.Response response;
        try {
            response = sendgrid.send(email);
            log.info "Sendgrid email status: " + response.getMessage();
            //print response.getMessage();
            success = true;
        }
        catch (SendGridException e) {
            log.error "Error sending email: ${e.message}", e;
            success = false;
        }

        //Persist contact us msg after sending email
        WebMsg webMsg = new WebMsg();

        webMsg.name = name;
        webMsg.email = respondToEmail;
        webMsg.subject = subject;
        webMsg.msg = message;
        webMsg.status = response.getMessage();

        webMsg.save(flush: true, failOnError: true);

        return success;
    }
}
