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
public class Examination {
    String name;
    String date;
    int id;

    public Examination()
    {
        
    }

    public Examination(String name, String date,int id) {
        this.name = name;
        this.date = date;
        this.id=id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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
