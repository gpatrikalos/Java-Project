/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mymaven.webservices;
import com.mymaven.classes.Exam;
import com.mymaven.classes.Examination;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.GenericType;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author patrick
 */
public class GetExamClient {
    
    public GetExamClient() {}
    
    public ArrayList<Examination> getExam()
    {
        ArrayList<Examination> mlist = (ArrayList<Examination>) Client.create().resource("http://localhost:8080/project/webresources/services/getexams").get(new GenericType<List<Examination>>(){});
        return mlist;
    } 
    

}
