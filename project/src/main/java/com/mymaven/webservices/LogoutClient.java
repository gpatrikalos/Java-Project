/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mymaven.webservices;

import javax.ws.rs.ClientErrorException;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.WebTarget;

/**
 * Jersey REST client generated for REST resource:myservices [services]<br>
 * USAGE:
 * <pre>
 *        LogoutClient client = new LogoutClient();
 *        Object response = client.XXX(...);
 *        // do whatever with response
 *        client.close();
 * </pre>
 *
 * @author patrick
 */
public class LogoutClient {

    private WebTarget webTarget;
    private Client client;
    private static final String BASE_URI = "http://localhost:8080/project/webresources";

    public LogoutClient() {
        client = javax.ws.rs.client.ClientBuilder.newClient();
        webTarget = client.target(BASE_URI).path("services");
    }
    
    public <T> T Logout(Class<T> responseType, String sessionid) throws ClientErrorException {
        WebTarget resource = webTarget;
        if (sessionid != null) {
            resource = resource.queryParam("sessionid", sessionid);
        }
        resource = resource.path("logout");
        return resource.request(javax.ws.rs.core.MediaType.APPLICATION_XML).get(responseType);
    }

    public void close() {
        client.close();
    }
    
}
