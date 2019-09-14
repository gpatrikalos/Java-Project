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
 * @author giorg
 */
@XmlRootElement
public class Answer {
    String choice;
    ArrayList <Question2> ar;
    String dt;
    String time;
    int code;
    String userid;

    public Answer() {
    }

    public Answer(String choice, ArrayList<Question2> ar, String dt, String time, int code, String userid) {
        this.choice = choice;
        this.ar = ar;
        this.dt = dt;
        this.time = time;
        this.code = code;
        this.userid = userid;
    }

    public String getChoice() {
        return choice;
    }

    public void setChoice(String choice) {
        this.choice = choice;
    }

    public ArrayList<Question2> getAr() {
        return ar;
    }

    public void setAr(ArrayList<Question2> ar) {
        this.ar = ar;
    }

    public String getDt() {
        return dt;
    }

    public void setDt(String dt) {
        this.dt = dt;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    
 
   

    
}
