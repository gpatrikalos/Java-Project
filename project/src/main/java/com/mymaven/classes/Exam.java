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
public class Exam {
    String name;
    String date;


    public Exam()
    {
        
    }

    public Exam(String name, String date) {
        this.name = name;
        this.date = date;
    }

   

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
    
   
}
