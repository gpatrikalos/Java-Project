/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mymaven.classes;

import javax.xml.bind.annotation.XmlRootElement;


/**
 *
 * @author patrick
 */
@XmlRootElement
public class LoginAppMess {
    int userid;
    String name;
    String username;
    int role;
    String sessionid;
    String message;

    public LoginAppMess() {
    }

    public LoginAppMess(int userid, String name, String username, int role, String sessionid, String message) {
        this.userid = userid;
        this.name = name;
        this.username = username;
        this.role = role;
        this.sessionid = sessionid;
        this.message = message;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public String getSessionid() {
        return sessionid;
    }

    public void setSessionid(String sessionid) {
        this.sessionid = sessionid;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

 

    
   
 
}

