package com.tdx.stormpath

import com.stormpath.sdk.account.Account
import com.stormpath.sdk.account.AccountList
import com.stormpath.sdk.account.AccountStatus
import com.stormpath.sdk.application.Application
import com.stormpath.sdk.application.ApplicationList
import com.stormpath.sdk.application.Applications
import com.stormpath.sdk.authc.AuthenticationRequest
import com.stormpath.sdk.authc.UsernamePasswordRequest
import com.stormpath.sdk.client.Client
import com.stormpath.sdk.client.Clients
import com.stormpath.sdk.directory.CustomData
import com.stormpath.sdk.impl.authc.DefaultAuthenticationResult
import com.stormpath.sdk.tenant.Tenant
import grails.transaction.Transactional

import javax.annotation.PostConstruct

@Transactional
class StormPathService {

    @PostConstruct
    void init() {
        String test = ""
    }

    def createUser(firstname, lastname, email, password, location, dob, facebookImgUrl, facebookLink) {

        Client client = Clients.builder().build();

        Tenant tenant = client.getCurrentTenant();
        ApplicationList applications = tenant.getApplications(
                Applications.where(Applications.name().eqIgnoreCase("alumni-main"))
        );

        Application application = applications.iterator().next();

        //Create the account object
        Account account = client.instantiate(Account.class);

        //Set the account properties
        account.setGivenName(firstname);
        account.setSurname(lastname);
        account.setUsername(firstname + "." + lastname); //optional, defaults to email if unset
        account.setEmail(email);
        account.setPassword(password);
        account.setStatus(AccountStatus.UNVERIFIED);

        CustomData customData = account.getCustomData();
        customData.put("delegation-semester", "Spring");
        customData.put("delegation-year", "2003");
        customData.put("current-location", location);
        customData.put("donation-level", "0");
        customData.put("facebook-img", facebookImgUrl);
        customData.put("facebook-link", facebookLink);
        customData.put("dob", dob);

        //Create the account using the existing Application object
        application.createAccount(account);

    }

    def getUser() {

        Client client = Clients.builder().build();

        Tenant tenant = client.getCurrentTenant();
        ApplicationList applications = tenant.getApplications(
                Applications.where(Applications.name().eqIgnoreCase("alumni-main"))
        );

        Application application = applications.iterator().next();

        Map<String, Object> queryParams = new HashMap<String, Object>();
        queryParams.put("email", "anataliocs@gmail.com");
        AccountList accounts = application.getAccounts(queryParams);

        return accounts
    }

    def login(user, pw) {

        Client client = Clients.builder().build();

        Tenant tenant = client.getCurrentTenant();
        ApplicationList applications = tenant.getApplications(
                Applications.where(Applications.name().eqIgnoreCase("alumni-main"))
        );

        Application application = applications.iterator().next();

        //Create an authentication request using the credentials
        AuthenticationRequest request = new UsernamePasswordRequest(user, pw);

        //Now let's authenticate the account with the application:
        try {
            DefaultAuthenticationResult result = application.authenticateAccount(request);
            Account account = result.getAccount();

            print "result " + result
            print "acct " + result.getAccount()
        } catch (ResourceException ex) {
            System.out.println(ex.getStatus() + " " + ex.getMessage());
        }
    }
}
