<%-- 
    Document   : registration
    Created on : Aug 5, 2017, 1:09:34 PM
    Author     : patrick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="styles2.css" />
    </head>
    <body>
        
        <img src="register2.png"  style="width:110px;height:110px;">
        <h2>ΕΓΓΡΑΦΗ ΧΡΗΣΤΗ</h2>
        
            <form id="theFormOutcome" action="index.jsp" method="POST">
                <table>
                    <tr><td><h3>Όνομα</h3></td><td colspan="2"><input type="text" name="name"></td></tr>
                    <tr><td><h3>Username</h3> </td><td colspan="2"><input type="text" name="username"></td></tr>
                    <tr><td><h3>Password</h3> </td><td colspan="2"><input type="password" name="pass"></td></tr>
                    <tr><td><h3>Εγγραφή ως</h3></td>
                        <td colspan="2">
                            <select name="role">
                                <option value="3"><h3>Εξεταζόμενος</h3></option> 
                                <option value="2">Εξεταστής</option>
                                <option value="1">Διαχειριστής</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3"><input type="submit" value="Εγγραφή"></td>
                    </tr>
                </table>
               
                <input type="hidden" name="controlregvalue" value="register">
            </form>
    
    </body>
</html>
