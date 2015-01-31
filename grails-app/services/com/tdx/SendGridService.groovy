package com.tdx

import com.sendgrid.SendGrid
import com.sendgrid.SendGridException
import grails.transaction.Transactional

@Transactional
class SendGridService {

    def grailsApplication

    def sendEmail(String name, String respondToEmail, String subject, String message) {

        SendGrid sendgrid = new SendGrid(
                grailsApplication.config.grails.tdx.sendgrid.user,
                grailsApplication.config.grails.tdx.sendgrid.pw);

        SendGrid.Email email = new SendGrid.Email();

        email.addTo("anataliocs@gmail.com");
        email.addToName("Rho Triton Alumni Association");
        email.setFrom("info@tdxvcu.com");
        email.setSubject("[TDXPT-" + subject + "] " + "Message from: " + name);


        String body = """\
            <strong>Name:</strong> ${name} <br/><br/>
            <strong>Email:</strong> ${respondToEmail} <br/><br/>
            <strong>Subject:</strong> ${subject} <br/><br/>
            <strong>Message:</strong> ${message} <br/><br/>
            """

        email.setHtml(body);

        try {
            SendGrid.Response response = sendgrid.send(email);
            log.info "Sendgrid email status: " + response.getMessage()
        }
        catch (SendGridException e) {
            log.error "Error sending email: ${e.message}", e
        }

    }
}
