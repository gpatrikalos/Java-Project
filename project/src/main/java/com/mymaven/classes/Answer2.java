/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mymaven.classes;

/**
 *
 * @author overmind7
 */
import java.util.ArrayList;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author giorg
 */
@XmlRootElement
public class Answer2 {
    String personsid;
    String name;
    String username;
    String centern;
    String choice;
    String examid;
    String question;
    String righta;
    String dt;
    String time;

    public Answer2() {
    }

    public Answer2(String personsid, String name, String username, String centern, String choice, String examid, String question, String righta, String dt, String time) {
        this.personsid = personsid;
        this.name = name;
        this.username = username;
        this.centern = centern;
        this.choice = choice;
        this.examid = examid;
        this.question = question;
        this.righta = righta;
        this.dt = dt;
        this.time = time;
    }

    public String getPersonsid() {
        return personsid;
    }

    public void setPersonsid(String personsid) {
        this.personsid = personsid;
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

    public String getCentern() {
        return centern;
    }

    public void setCentern(String centern) {
        this.centern = centern;
    }

    public String getChoice() {
        return choice;
    }

    public void setChoice(String choice) {
        this.choice = choice;
    }

    public String getExamid() {
        return examid;
    }

    public void setExamid(String examid) {
        this.examid = examid;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getRighta() {
        return righta;
    }

    public void setRighta(String righta) {
        this.righta = righta;
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

   

    
}
