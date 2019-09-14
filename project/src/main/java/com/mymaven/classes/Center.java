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
public class Center {
 
    String name;
    String address;


    public Center()
    {
        
    }

    public Center(String name, String address) {
        this.name = name;
        this.address = address;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    
    
    
    
}
