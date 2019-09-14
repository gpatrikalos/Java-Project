/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mymaven.classes;

import java.util.ArrayList;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author patrick
 */
@XmlRootElement
public class ActivateUsers {
    int userid;
    String username;
    String role;
    ArrayList<Integer> activateusersids;
    String sessionid;
    
    public ActivateUsers()
    {
        
    }
    
    public ActivateUsers(int userid, String username, String role) {
        this.userid = userid;
        this.username = username;
        this.role = role;
    }

    public ActivateUsers(ArrayList<Integer> activateusersids, String sessionid) {
        this.activateusersids = activateusersids;
        this.sessionid = sessionid;
        this.userid = -1;
        this.username = "Ν/Α";
        this.role = "Ν/Α";
    }
    
    

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public ArrayList<Integer> getActivateusersids() {
        return activateusersids;
    }

    public void setActivateusersids(ArrayList<Integer> activateusersids) {
        this.activateusersids = activateusersids;
    }

    public String getSessionid() {
        return sessionid;
    }

    public void setSessionid(String sessionid) {
        this.sessionid = sessionid;
    }
}
