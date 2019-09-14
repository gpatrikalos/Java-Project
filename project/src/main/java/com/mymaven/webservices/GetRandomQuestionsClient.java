/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mymaven.webservices;

import com.mymaven.classes.Question;
import com.mymaven.classes.Question2;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.GenericType;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author patrick
 */

//JERSEY CLIENT
public class GetRandomQuestionsClient {
    
    
    public ArrayList<Question2> getQuestion()
    {
        ArrayList<Question2> mlist = (ArrayList<Question2>) Client.create().resource("http://localhost:8080/project/webresources/services/getrandomquestions").get(new GenericType<ArrayList<Question2>>(){});
        return mlist;
    }           
}
