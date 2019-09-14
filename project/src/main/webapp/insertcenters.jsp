<%-- 
    Document   : insertQuestion
    Created on : Aug 19, 2017, 6:20:21 PM
    Author     : patrick
--%>
<%@page import="com.mymaven.webservices.InsertQuestionClient"%>
<%@page import="com.mymaven.classes.Question"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <h2>ΕΙΣΑΓΩΓΗ ΕΞΕΤΑΣΤΙΚΟΥ ΚΕΝΤΡΟΥ</h2>
        
            <form id="theFormOutcome" action="index.jsp" method="POST">
                <table>
                    <tr><td><h3>Όνομα Εξεταστικού Κέντρου</h3></td><td colspan="2"><input type="text" name="cname" required></td></tr>
                    <tr><td><h3>Διέυθυνση</h3></td><td colspan="2"><input type="text" name="address" required></td></tr>
      
                   
                        <td colspan="3"><input type="submit" value="Εισαγωγή"></td>
                    </tr>
                </table>
               
                <input type="hidden" name="controlcenter" value="insertcenter">
            </form>
    </body>
</html>
