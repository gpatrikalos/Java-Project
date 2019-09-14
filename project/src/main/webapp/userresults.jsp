<%@page import="com.mymaven.classes.Rmess"%>
<%@page import="com.mymaven.classes.Contact"%>
<%@page import="com.mymaven.classes.Answer2"%>
<%@page import="com.mymaven.classes.Answer"%>
<%@page import="com.mymaven.webservices.UserResultClient"%>
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
    </head>
    <body>
        <FORM NAME="form9" action="index.jsp" METHOD="POST" >
         <p align="center"> <h2>Αποτελέσματα εξεταζομένων (με βάση κωδικό εξέτασης)  </h2></p>       
          <INPUT TYPE="text" NAME="answertext8" value="" style="margin-left:auto;margin-right:auto;display:block;margin-top:10%;margin-bottom:0%">
          <INPUT TYPE="submit" VALUE="Επιλογή" name="answer" style="margin-left:auto;margin-right:auto;display:block;margin-top:10%;margin-bottom:0%">
          <input type="hidden" name="uresult" value="que1" style="margin-left:auto;margin-right:auto;display:block;margin-top:10%;margin-bottom:0%" />
    </FORM>
                            
    </body>
</html>