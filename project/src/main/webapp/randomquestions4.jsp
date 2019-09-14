<%-- 
    Document   : plessons
    Created on : Aug 6, 2017, 1:07:40 PM
    Author     : patrick
--%>

<%@page import="com.mymaven.classes.Question2"%>
<%@page import="java.lang.Class"%>
<%@page import="java.util.List"%>
<%@page import="javax.ws.rs.core.GenericType"%>
<%@page import="com.mymaven.webservices.GetRandomQuestionsClient"%>
<%@page import="com.mymaven.classes.Question"%>
<%@page import="java.util.ArrayList"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
            <link rel="stylesheet" type="text/css" href="styles2.css" />
            <link rel="stylesheet" type="text/css" href="stylesheet.css" />
             <script type="text/javascript">
                  function Timer()
                    {
                        myVar = setTimeout(function(){ alert("You dont have much time left"); }, 250000);
                        myVar = setTimeout(function(){ window.location = "destroy.jsp"; }, 300000);
                    }
                    function Confirm() {
                            var txt;
                            if (confirm("Are you sure?!")) {
                                txt = "Yes!";
                            } else {
                                txt = "No!";
                            }
                            document.getElementById("demo").innerHTML = txt;
                        }
            </script>
    </head>
    <body>
        <FORM NAME="form1" METHOD="POST" action="index.jsp">
        <p align="center"> <h2>Ερωτήσεις</h2></p>
            <body onload="Timer();">
            <body onload="Confirm();">
        <table border="2" id="resulttable">
        <% 
                //EMFANISH MATHIMATWN ME LOG IN(ME SAVE)
               if(session.getAttribute("isloggedin").equals("YES") && session.getAttribute("role").equals("3"))
               {
                   ArrayList<Question2> les1= ( ArrayList<Question2>)session.getAttribute("abc");
                   
                  out.println ("<tr>");
                  out.println("<th>");
                  out.println(les1.get(3).getDescr());
                  out.println("</th>");
                  out.println("</tr>");
                  
                  out.println ("<tr>");
                  out.println("</tr>");
                  out.println ("<tr>");
                  out.println("</tr>");
   
                  
                  out.println ("<tr>");
                  out.println("<th>");
                  out.println(les1.get(3).getAnsw1());
                  out.println("</th>");
                  out.println("</tr>");
                  
                  out.println ("<tr>");
                  out.println("<th>");
                  out.println(les1.get(3).getAnsw2());
                  out.println("</th>");
                  out.println("</tr>");
                  
                  out.println ("<tr>");
                  out.println("<th>");
                  out.println(les1.get(3).getAnsw3());
                  out.println("</th>");
                  out.println("</tr>");
                  
                  out.println ("<tr>");
                  out.println("<th>");
                  out.println(les1.get(3).getAnsw4());
                  out.println("</th>");
                  out.println("</tr>");
                                                          
               }
        %>
        </table>
        <INPUT TYPE="text" NAME="answertext44" value="" style="margin-left:auto;margin-right:auto;display:block;margin-top:10%;margin-bottom:0%">
        <INPUT TYPE="submit" VALUE="Απάντηση" name="answer" style="margin-left:auto;margin-right:auto;display:block;margin-top:10%;margin-bottom:0%">
        <input type="hidden" name="tanswer4" value="que4" style="margin-left:auto;margin-right:auto;display:block;margin-top:10%;margin-bottom:0%"/>
    </FORM>
    </body>
</html>
