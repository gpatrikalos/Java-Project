/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mymaven.webservices;


import com.mymaven.classes.Answer2;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.GenericType;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author overmind7
 */
public class UserResultClient {
       
     
    public ArrayList<Answer2> getAnswer(String il)
    {
        ArrayList<Answer2> mlist = (ArrayList<Answer2>) Client.create().resource("http://localhost:8080/project/webresources/services/getanswer").queryParam("il", il).get(new GenericType<List<Answer2>>(){});
        return mlist;
    }
    
     public ArrayList<Answer2> getAnswerCenter(String il2)
    {
        ArrayList<Answer2> mlist = (ArrayList<Answer2>) Client.create().resource("http://localhost:8080/project/webresources/services/getanswercenter").queryParam("il2", il2).get(new GenericType<List<Answer2>>(){});
        return mlist;
    }
     
      public ArrayList<Answer2> getAnswerExam(String il3)
    {
        ArrayList<Answer2> mlist = (ArrayList<Answer2>) Client.create().resource("http://localhost:8080/project/webresources/services/getanswerexam").queryParam("il3", il3).get(new GenericType<List<Answer2>>(){});
        return mlist;
    }
      
      
       public ArrayList<Answer2> getAnswerUserid(String il4)
    {
        ArrayList<Answer2> mlist = (ArrayList<Answer2>) Client.create().resource("http://localhost:8080/project/webresources/services/getansweruserid").queryParam("il4", il4).get(new GenericType<List<Answer2>>(){});
        return mlist;
    }

}

    

