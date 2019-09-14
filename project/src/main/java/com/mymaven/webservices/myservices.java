/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mymaven.webservices;

import com.mymaven.classes.ActivateUsers;
import com.mymaven.classes.Answer;
import com.mymaven.classes.Answer2;
import com.mymaven.classes.Authent;
import com.mymaven.classes.CheckLMess;
import com.mymaven.classes.InsertQuestion;
import com.mymaven.classes.LUsers;
import com.mymaven.classes.Question;
import com.mymaven.classes.Lmess;
import com.mymaven.classes.LoginAppMess;
import com.mymaven.classes.Rmess;
import com.mymaven.classes.Center;
import com.mymaven.classes.Contact;
import com.mymaven.classes.Exam;
import com.mymaven.classes.Examination;
import com.mymaven.classes.Question2;
import com.mymaven.classes.Users;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Produces;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import static javax.ws.rs.HttpMethod.POST;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

/**
 * REST Web Service
 *
 * @author patrick
 */
@Path("services")
public class myservices {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of myservices
     */
    public myservices() {
    }

    /**
     * Retrieves representation of an instance of WebServices.myservices
     * @return an instance of java.lang.String
     */
    
   

   @GET
    @Path("getrandomquestions")
    @Produces(MediaType.APPLICATION_XML)
    public ArrayList<Question2> getQuestion() 
    {        
        ArrayList<Question2> array=new ArrayList<Question2>();
        String squery="select * from questions order by rand() limit 5";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/projectdb", "root", "");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(squery);
            while (rs.next()) 
            {
                array.add(new Question2(rs.getString("descr"),rs.getString("answ1"),rs.getString("answ2"),rs.getString("answ3"),rs.getString("answ4"),rs.getString("ransw"),Integer.valueOf(rs.getString("id"))));
            }
            con.close();
        }
        catch (SQLException sqlex) {
            return null;
        }
        catch (ClassNotFoundException ex) {
            Logger.getLogger(myservices.class.getName()).log(Level.SEVERE, null, ex);
        }
        return array;
    }
    
    
    
  
    
    
    @GET
    @Path("getanswer")
    @Produces(MediaType.APPLICATION_XML)
    public  ArrayList<Answer2> getAnswer(@QueryParam("il")String il) 
    {     
        ArrayList<Answer2> array=new ArrayList<Answer2>();
        String squery="select * from results where eid='"+il+"'";
     try         
      {
        Class.forName("com.mysql.jdbc.Driver");
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/projectdb", "root", "");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(squery);                                        
                                   
            while (rs.next()) 
            {
                array.add(new Answer2(rs.getString("personsid"),rs.getString("name"),rs.getString("username"),rs.getString("centername"),rs.getString("answer"),rs.getString("eid"),rs.getString("questionid"),rs.getString("righta"),rs.getString("date"),rs.getString("time")));
            }
            rs.close();
            con.close();
      }

        catch (SQLException sqlex) {
            return null;
        }
        catch (ClassNotFoundException ex) {
            Logger.getLogger(myservices.class.getName()).log(Level.SEVERE, null, ex);
        }
        return array;
    }
    
    
    
    
    
    
      @GET
    @Path("getanswercenter")
    @Produces(MediaType.APPLICATION_XML)
    public  ArrayList<Answer2> getAnswerCenter(@QueryParam("il2")String il2) 
    {     
        ArrayList<Answer2> array=new ArrayList<Answer2>();
        String squery="select * from results where date='"+il2+"'";
     try         
      {
        Class.forName("com.mysql.jdbc.Driver");
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/projectdb", "root", "");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(squery);                                        
                                   
            while (rs.next()) 
            {
                 array.add(new Answer2(rs.getString("personsid"),rs.getString("name"),rs.getString("username"),rs.getString("centername"),rs.getString("answer"),rs.getString("eid"),rs.getString("questionid"),rs.getString("righta"),rs.getString("date"),rs.getString("time")));
            }
            rs.close();
            con.close();
      }

        catch (SQLException sqlex) {
            return null;
        }
        catch (ClassNotFoundException ex) {
            Logger.getLogger(myservices.class.getName()).log(Level.SEVERE, null, ex);
        }
        return array;
    }
    
    
    
    
    
    @GET
    @Path("getanswerexam")
    @Produces(MediaType.APPLICATION_XML)
    public  ArrayList<Answer2> getAnswerExam(@QueryParam("il3")String il3) 
    {     
        ArrayList<Answer2> array=new ArrayList<Answer2>();
        String squery="select * from results where eid='"+il3+"'";
     try         
      {
        Class.forName("com.mysql.jdbc.Driver");
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/projectdb", "root", "");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(squery);                                        
                                   
            while (rs.next()) 
            {
                 array.add(new Answer2(rs.getString("personsid"),rs.getString("name"),rs.getString("username"),rs.getString("centername"),rs.getString("answer"),rs.getString("eid"),rs.getString("questionid"),rs.getString("righta"),rs.getString("date"),rs.getString("time")));
            }
            rs.close();
            con.close();
      }

        catch (SQLException sqlex) {
            return null;
        }
        catch (ClassNotFoundException ex) {
            Logger.getLogger(myservices.class.getName()).log(Level.SEVERE, null, ex);
        }
        return array;
    }
    
    
    
    
    @GET
    @Path("getansweruserid")
    @Produces(MediaType.APPLICATION_XML)
    public  ArrayList<Answer2> getAnswerUserid(@QueryParam("il4")String il4) 
    {     
        ArrayList<Answer2> array=new ArrayList<Answer2>();
        String squery="select * from results where personsid='"+il4+"'";
     try         
      {
        Class.forName("com.mysql.jdbc.Driver");
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/projectdb", "root", "");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(squery);                                        
                                   
            while (rs.next()) 
            {
                 array.add(new Answer2(rs.getString("personsid"),rs.getString("name"),rs.getString("username"),rs.getString("centername"),rs.getString("answer"),rs.getString("eid"),rs.getString("questionid"),rs.getString("righta"),rs.getString("date"),rs.getString("time")));
            }
            rs.close();
            con.close();
      }

        catch (SQLException sqlex) {
            return null;
        }
        catch (ClassNotFoundException ex) {
            Logger.getLogger(myservices.class.getName()).log(Level.SEVERE, null, ex);
        }
        return array;
    } 
    
    
 
        
        
        
    
    @POST
    @Path("Insertexamanswer")   
    @Produces(MediaType.APPLICATION_XML)
    @Consumes(MediaType.APPLICATION_XML)
    public Rmess InsertExamAnswer(String ide) 
    {
        Rmess message = new Rmess();
        String iquery1="";
        String exam="";
        String test="";

                //WS Authentication
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/projectdb", "root", "");
            PreparedStatement iquery = con.prepareStatement("select * from examination where id='"+ide+"'");      
            ResultSet rs=iquery.executeQuery();
            rs.next();
            exam=rs.getString("examcenter");
            test=rs.getString("id");
            rs.close();
            con.close();
                                              
           }
         catch (SQLException sqlex) {
                message.setMessage("NO");
                message.setSqlmess("Kapoio lathos proekypse.Parakalw ksanaprospathiste29"); 
                return message;
        }
        catch (ClassNotFoundException ex) {
            Logger.getLogger(myservices.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
                try{
          Connection con5 = DriverManager.getConnection("jdbc:mysql://localhost/projectdb", "root", "");
          Statement st = con5.createStatement();
             iquery1="DELETE FROM currently";
            try
               {
                st.executeUpdate(iquery1);
               }
            
                catch (SQLException sqlex) 
               {
                int err=sqlex.getErrorCode();
                if(err==1062) //sql exception code for duplicate unique entry error
                {
                 message.setMessage("NO");
                 message.setSqlmess("Το όνομα της εξέτασης υπάρχει ήδη.Παρακαλώ επιλέξτε μια άλλη εξέταση.");
                }
                else
                {
                 message.setMessage("NO");
                 message.setSqlmess("Kapoio lathos proekypse.Parakalw ksanaprospathiste7"); 
                }
                return message;
               }
                            
             message.setMessage("YES");
            message.setSqlmess("00000");
             con5.close();
            st.close();
            
        }
        catch (SQLException sqlex) {
                message.setMessage("NO");
                message.setSqlmess("Kapoio lathos proekypse.Parakalw ksanaprospathiste210"); 
                return message;
        }
        
        
        
        try{
          Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost/projectdb", "root", "");
          Statement st = con1.createStatement();
             iquery1="INSERT INTO currently(ename,eid)\n" + 
                    "VALUES ('"+exam+"','"+test+"')";
            try
               {
                st.executeUpdate(iquery1);
               }
            
                catch (SQLException sqlex) 
               {
                int err=sqlex.getErrorCode();
                if(err==1062) //sql exception code for duplicate unique entry error
                {
                 message.setMessage("NO");
                 message.setSqlmess("Το όνομα της εξέτασης υπάρχει ήδη.Παρακαλώ επιλέξτε μια άλλη εξέταση.");
                }
                else
                {
                 message.setMessage("NO");
                 message.setSqlmess("Kapoio lathos proekypse.Parakalw ksanaprospathiste7"); 
                }
                return message;
               }
                            
             message.setMessage("YES");
            message.setSqlmess("00000");
             con1.close();
            st.close();
            
        }
        catch (SQLException sqlex) {
                message.setMessage("NO");
                message.setSqlmess("Kapoio lathos proekypse.Parakalw ksanaprospathiste210"); 
                return message;
        }
        return message;
    }
    
    
    
    
    
     @POST
    @Path("Insertcenters")   
    @Produces(MediaType.APPLICATION_XML)
    @Consumes(MediaType.APPLICATION_XML)
    public Rmess InsertCenter(Center il) 
    {
        Rmess message = new Rmess();
        String iquery="";
        String squery="";

        
        //WS Authentication
     
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/projectdb", "root", "");
            Statement st = con.createStatement();
            iquery="INSERT INTO examcenter(centername, address)\n" + 
                    "VALUES ('"+il.getName()+"', '"+il.getAddress()+"')";
            
            //INSERT LESSON'S ATTRIBUTES
            try
            {
                st.executeUpdate(iquery);
            }
            catch (SQLException sqlex) 
            {
                int err=sqlex.getErrorCode();
                if(err==1062) //sql exception code for duplicate unique entry error
                {
                 message.setMessage("NO");
                 message.setSqlmess("Το όνομα του εξεταστιού κέντρου υπάρχει ήδη.Παρακαλώ επιλέξτε άλλο εξεταστικό κέντρο.");
                }
                else
                {
                 message.setMessage("NO");
                 message.setSqlmess("Kapoio lathos proekypse.Parakalw ksanaprospathiste"); 
                }
                return message;
            }
            con.close();
            message.setMessage("YES");
            message.setSqlmess("00000");
           }
        catch (SQLException sqlex) {
                message.setMessage("NO");
                message.setSqlmess("Kapoio lathos proekypse.Parakalw ksanaprospathiste"); 
                return message;
        }
        catch (ClassNotFoundException ex) {
            Logger.getLogger(myservices.class.getName()).log(Level.SEVERE, null, ex);
        }
        return message;
    }
    
    
    
    @GET
    @Path("getexams")
    @Produces(MediaType.APPLICATION_XML)
    public ArrayList<Examination> getExam() 
    {        
        ArrayList<Examination> array=new ArrayList<Examination>();
        String squery="select * from examination";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/projectdb", "root", "");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(squery);
            while (rs.next()) 
            {
                array.add(new Examination(rs.getString("examcenter"),rs.getString("tdate"),rs.getInt("id")));
            }
            con.close();
        }
        catch (SQLException sqlex) {
            return null;
        }
        catch (ClassNotFoundException ex) {
            Logger.getLogger(myservices.class.getName()).log(Level.SEVERE, null, ex);
        }
        return array;
    }
    
    
    
      @POST
    @Path("Insertanswer")   
    @Produces(MediaType.APPLICATION_XML)
    @Consumes(MediaType.APPLICATION_XML)
    public Rmess InsertAnswer(Answer ans) 
    {
        Rmess message = new Rmess();

        String iquery1="";
        String exam="";
        String test="";
         String id="";
         String pid="";
         String pid3="";
         String id2="";
         String id3="";

                //WS Authentication
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/projectdb", "root", "");
            PreparedStatement iquery = con.prepareStatement("select * from currently");      
            ResultSet rs=iquery.executeQuery();
            rs.next();
            exam=rs.getString("ename");
            test=rs.getString("eid");
            rs.close();
            con.close();
                                              
           }
         catch (SQLException sqlex) {
                message.setMessage("NO");
                message.setSqlmess("Kapoio lathos proekypse.Parakalw ksanaprospathiste1"); 
                return message;
        }
        catch (ClassNotFoundException ex) {
            Logger.getLogger(myservices.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            ArrayList<Question2> array=ans.getAr();
            Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost/projectdb", "root", "");
            int a=ans.getCode();
            String p=array.get(a).getDescr();
            PreparedStatement iquery = con1.prepareStatement("select id,ransw from questions where descr='"+p+"'");      
            ResultSet rs1=iquery.executeQuery();
            rs1.next();
            id2=rs1.getString("id");
            id3=rs1.getString("ransw");
            rs1.close();
            con1.close();
                                              
           }
         catch (SQLException sqlex) {
                message.setMessage("NO");
                message.setSqlmess("Kapoio lathos proekypse.Parakalw ksanaprospathiste277777"); 
                return message;
         }
        catch (ClassNotFoundException ex) {
            Logger.getLogger(myservices.class.getName()).log(Level.SEVERE, null, ex);
        }

             
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost/projectdb", "root", "");
            PreparedStatement iquery = con2.prepareStatement("select Id,Name from persons where UserName='"+ans.getUserid()+"'");  
            ResultSet rs2=iquery.executeQuery();
            rs2.next();
            pid=rs2.getString("Id");
            pid3=rs2.getString("Name");
            rs2.close();
            con2.close();
                                              
           }
         catch (SQLException sqlex) {
                message.setMessage("NO");
                message.setSqlmess("Kapoio lathos proekypse.Parakalw ksanaprospathiste3"); 
                return message;
        }
        catch (ClassNotFoundException ex) {
            Logger.getLogger(myservices.class.getName()).log(Level.SEVERE, null, ex);
        }
        
 
        
        try{
          Connection con3 = DriverManager.getConnection("jdbc:mysql://localhost/projectdb", "root", "");
          Statement st = con3.createStatement();
             iquery1="INSERT INTO results(personsid,name,username,centername,answer,eid,questionid,righta,date,time)\n" + 
                    "VALUES ('"+pid+"','"+pid3+"','"+ans.getUserid()+"','"+exam+"','"+ans.getChoice()+"','"+test+"','"+id2+"','"+id3+"','"+ans.getDt()+"','"+ans.getTime()+"')";
            try
               {
                st.executeUpdate(iquery1);
               }
            
                catch (SQLException sqlex) 
               {
                int err=sqlex.getErrorCode();
                if(err==1062) //sql exception code for duplicate unique entry error
                {
                 message.setMessage("NO");
                 message.setSqlmess("Το όνομα της εξέτασης υπάρχει ήδη.Παρακαλώ επιλέξτε μια άλλη εξέταση.");
                }
                else
                {
                 message.setMessage("NO");
                 message.setSqlmess("Kapoio lathos proekypse.Parakalw ksanaprospathiste4"); 
                }
                return message;
               }
                            
             message.setMessage("YES");
            message.setSqlmess("00000");
             con3.close();
            st.close();
            
        }
        catch (SQLException sqlex) {
                message.setMessage("NO");
                message.setSqlmess("Kapoio lathos proekypse.Parakalw ksanaprospathiste5"); 
                return message;
        }
        return message;
    }
    
    
    
    
    
    @POST
    @Path("Insertexams")   
    @Produces(MediaType.APPLICATION_XML)
    @Consumes(MediaType.APPLICATION_XML)
    public Rmess InsertExam(Exam il) 
    {
        Rmess message = new Rmess();
        String iquery="";
        String squery="";

        
        //WS Authentication
     
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/projectdb", "root", "");
            Statement st = con.createStatement();
            ResultSet rs;
            iquery="INSERT INTO examination(examcenter, tdate)\n" + 
                    "VALUES ('"+il.getName()+"', '"+il.getDate()+"')";
            
            //INSERT LESSON'S ATTRIBUTES
            try
            {
                st.executeUpdate(iquery);
            }
            catch (SQLException sqlex) 
            {
                int err=sqlex.getErrorCode();
                if(err==1062) //sql exception code for duplicate unique entry error
                {
                 message.setMessage("NO");
                 message.setSqlmess("Το όνομα της εξέτασης υπάρχει ήδη.Παρακαλώ επιλέξτε άλλη.");
                }
                else
                {
                 message.setMessage("NO");
                 message.setSqlmess("Kapoio lathos proekypse.Parakalw ksanaprospathiste"); 
                }
                return message;
            }
            con.close();
            message.setMessage("YES");
            message.setSqlmess("00000");
           }
        catch (SQLException sqlex) {
                message.setMessage("NO");
                message.setSqlmess("Kapoio lathos proekypse.Parakalw ksanaprospathiste"); 
                return message;
        }
        catch (ClassNotFoundException ex) {
            Logger.getLogger(myservices.class.getName()).log(Level.SEVERE, null, ex);
        }
        return message;
    }
    
    
    
    
    
    @POST
    @Path("Insertquestions")   
    @Produces(MediaType.APPLICATION_XML)
    @Consumes(MediaType.APPLICATION_XML)
    public Rmess InsertQuestion(Question il) 
    {
        Rmess message = new Rmess();
        String iquery="";
        String squery="";

        
        //WS Authentication
     
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/projectdb", "root", "");
            Statement st = con.createStatement();
            ResultSet rs;
            iquery="INSERT INTO questions(descr, answ1, answ2, answ3,answ4,ransw)\n" + 
                    "VALUES ('"+il.getDescr()+"', '"+il.getAnsw1()+"', '"+il.getAnsw2()+"', '"+il.getAnsw3()+"','"+il.getAnsw4()+"','"+il.getRansw()+"')";
            
            //INSERT LESSON'S ATTRIBUTES
            try
            {
                st.executeUpdate(iquery);
            }
            catch (SQLException sqlex) 
            {
                int err=sqlex.getErrorCode();
                if(err==1062) //sql exception code for duplicate unique entry error
                {
                 message.setMessage("NO");
                 message.setSqlmess("Το όνομα της ερώτησης υπάρχει ήδη.Παρακαλώ επιλέξτε μια άλλη ερώτηση.");
                }
                else
                {
                 message.setMessage("NO");
                 message.setSqlmess("Kapoio lathos proekypse.Parakalw ksanaprospathiste"); 
                }
                return message;
            }
            con.close();
            message.setMessage("YES");
            message.setSqlmess("00000");
           }
        catch (SQLException sqlex) {
                message.setMessage("NO");
                message.setSqlmess("Kapoio lathos proekypse.Parakalw ksanaprospathiste"); 
                return message;
        }
        catch (ClassNotFoundException ex) {
            Logger.getLogger(myservices.class.getName()).log(Level.SEVERE, null, ex);
        }
        return message;
    }
    

   
    
    
    @GET
    @Path("login")
    @Produces(MediaType.APPLICATION_XML)
    public Lmess Login(@QueryParam("username") String username,@QueryParam("pass") String pass,@QueryParam("sessionid") String sessionid) 
    {
        String squery="select Role,Id from persons where username='"+username+"' and password='"+pass+"'";
        Lmess message=null;
        LUsers user = new LUsers();
        System.out.print(username);
          System.out.print(pass);
                 System.out.print("AOUUUUUUUUUUUU3434343");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/projectdb", "root", "");           
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(squery);
            if(rs.next()) //an yparxei apotelesma(proxwraei sthn prwth grammh)
            {              System.out.print("AOUUUUUUUUUUUU");
                message=new Lmess("YES",rs.getInt("role"),rs.getInt("id"));               
                user=new LUsers(message.getRole(),username);
                Authent.getInstance().login(user, sessionid);
            }
            else
                message=new Lmess("NO",-1,-1);
            con.close();
        }
        catch (SQLException sqlex) {
            return message=new Lmess("NO",-1,-1);
        }
        catch (ClassNotFoundException ex) {
            Logger.getLogger(myservices.class.getName()).log(Level.SEVERE, null, ex);
        }
        return message;
    }
    
    
    
    
    @GET
    @Path("loginapp")
    @Produces(MediaType.APPLICATION_XML)
    public LoginAppMess LoginApp(@QueryParam("username") String username,@QueryParam("pass") String pass) 
    {
        String squery="select Role,Id,UserName,Name from persons where UserName='"+username+"' and password='"+pass+"'";
        LoginAppMess message=null;
        LUsers user = new LUsers();
        System.out.print(username);
        System.out.print(pass);
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost/projectdb", "root", "");           
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(squery);
            if(rs.next()) //an yparxei apotelesma(proxwraei sthn prwth grammh)
            {
                message=new LoginAppMess(rs.getInt("id"),rs.getString("Name"),rs.getString("UserName"),rs.getInt("Role"),generateSessionId(),"YES");
               
            }
            else
                message=new LoginAppMess(-1,"","",-1,"","NO");
            con.close();
        }
        catch (SQLException sqlex) {
            return message=new LoginAppMess(-1,"","",-1,"","NO");
        }
        catch (ClassNotFoundException ex) {
            Logger.getLogger(myservices.class.getName()).log(Level.SEVERE, null, ex);
        }
        return message;
    }
    
    
    
    
    @Path("logout")
    @GET
    @Produces(MediaType.APPLICATION_XML)
    public Lmess Logout(@QueryParam("sessionid") String sessionid) {
        Lmess message = new Lmess();
        if (Authent.getInstance().logout(sessionid)) 
        {
            message.setMessage("YES");
        } 
        else 
        {
            message.setMessage("NO");
        }
        return message;
    }
    
    
    
    
    @Path("checklogin")
    @GET
    @Produces(MediaType.APPLICATION_XML)
    public CheckLMess CheckLogin(@QueryParam("sessionid") String sessionid) {
        CheckLMess message = new CheckLMess();

        if (Authent.getInstance().checkLogin(sessionid)) {
            message.setMess("YES");
        } else {
            message.setMess("NO");
        }
        return message;
    }
    
    
    
    @POST
    @Path("Registration")
    @Consumes(MediaType.APPLICATION_XML)
    @Produces(MediaType.APPLICATION_XML)
    public Rmess Register(Users u)
    {
        Rmess message = new Rmess("","");
        String iquery;
        iquery="INSERT INTO persons(name, role, username, password) VALUES ('"+u.getName()+"','"+u.getRole()+"','"+u.getUsername()+"','"+u.getPassword()+"')";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/projectdb", "root", "");
  

            Statement st = con.createStatement();
            int rs = st.executeUpdate(iquery);
            con.close();
            message.setMessage("YES");
            message.setSqlmess("00000"); //success code: to query ektelesthke xwris problhma
        }
        catch (SQLException sqlex) 
        {
            int err=sqlex.getErrorCode();
            if(err==1062) //sql exception code for duplicate unique entry
            {
                message.setMessage("NO");
                message.setSqlmess("Username already exists.");
            }
            else
            {
               message.setMessage("NO");
               message.setSqlmess("Kapoio lathos proekypse.Parakalw ksanaprospathiste"); 
            }
        }
        catch (ClassNotFoundException ex) {
            Logger.getLogger(myservices.class.getName()).log(Level.SEVERE, null, ex);
        }
        return message;
    }
    
    
    
    
    
    //SESSION ID GENERATOR
    private String generateSessionId() 
    {
        char[] table = new char[15];
        String characters = "0123456789qwertyuioplkjhgfdsazxcvbnm";
        Random rand = new Random();
        int sessionLen = 15;
        for (int i = 0; i < sessionLen; i++) {
            int n = rand.nextInt(36);
            table[i] = characters.charAt(n);
        }
        StringBuilder x = new StringBuilder();
        x.append(table);
        String session = x.toString();
        return session;
    }
    
    }
