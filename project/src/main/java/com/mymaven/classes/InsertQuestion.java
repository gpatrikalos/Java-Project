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
public class InsertQuestion {
    String descr;
    String answ1;
    String answ2;
    String answ3;
    String answ4;
    int ransw;

    public InsertQuestion(String descr, String answ1, String answ2, String answ3, String answ4, int ransw) {
        this.descr = descr;
        this.answ1 = answ1;
        this.answ2 = answ2;
        this.answ3 = answ3;
        this.answ4 = answ4;
        this.ransw = ransw;
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

    public int getRansw() {
        return ransw;
    }

    public void setRansw(int ransw) {
        this.ransw = ransw;
    }


}
