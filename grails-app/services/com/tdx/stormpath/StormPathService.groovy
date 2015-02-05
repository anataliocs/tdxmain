package com.tdx.stormpath

import com.stormpath.sdk.account.Account
import com.stormpath.sdk.application.Application
import com.stormpath.sdk.application.ApplicationList
import com.stormpath.sdk.application.Applications
import com.stormpath.sdk.client.Client
import com.stormpath.sdk.client.Clients
import com.stormpath.sdk.directory.CustomData
import com.stormpath.sdk.tenant.Tenant
import grails.transaction.Transactional

@Transactional
class StormPathService {


    def createUser() {

        Client client = Clients.builder().build();

        Tenant tenant = client.getCurrentTenant();
        ApplicationList applications = tenant.getApplications(
                Applications.where(Applications.name().eqIgnoreCase("alumni-main"))
        );

        Application application = applications.iterator().next();

        //Create the account object
        Account account = client.instantiate(Account.class);

        //Set the account properties
        account.setGivenName("Joe");
        account.setSurname("Stormtrooper");
        account.setUsername("tk421"); //optional, defaults to email if unset
        account.setEmail("tk421@stormpath.com");
        account.setPassword("Changeme1");
        CustomData customData = account.getCustomData();
        customData.put("favoriteColor", "white");

        //Create the account using the existing Application object
        //application.createAccount(account);

    }
}
