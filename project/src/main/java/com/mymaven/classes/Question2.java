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
public class Question2 {
    String descr;
    String answ1;
    String answ2;
    String answ3;
    String answ4;
    String ransw;
    int id;

    public Question2() {
    }

    public Question2(String descr, String answ1, String answ2, String answ3, String answ4, String ransw,int id) {
        this.descr = descr;
        this.answ1 = answ1;
        this.answ2 = answ2;
        this.answ3 = answ3;
        this.answ4 = answ4;
        this.ransw = ransw;
        this.id=id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescr() {
        return descr;
    }

    public void setDescr(String descr) {
        this.descr = descr;
    }

    public String getAnsw1() {
        return answ1;
    }

    public void setAnsw1(String answ1) {
        this.answ1 = answ1;
    }

    public String getAnsw2() {
        return answ2;
    }

    public void setAnsw2(String answ2) {
        this.answ2 = answ2;
    }

    public String getAnsw3() {
        return answ3;
    }

    public void setAnsw3(String answ3) {
        this.answ3 = answ3;
    }

    public String getAnsw4() {
        return answ4;
    }

    public void setAnsw4(String answ4) {
        this.answ4 = answ4;
    }

    public String getRansw() {
        return ransw;
    }

    public void setRansw(String ransw) {
        this.ransw = ransw;
    }


}
