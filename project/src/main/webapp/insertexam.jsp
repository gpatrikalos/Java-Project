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
        <h2>ΕΙΣΑΓΩΓΗ ΕΞΕΤΑΣΗΣ</h2>
        
            <form id="theFormOutcome" action="index.jsp" method="POST">
                <table>
                    <tr><td><h3>Κέντρο Εξέτασης</h3></td><td colspan="2"><input type="text" name="kentro"></td></tr>
                    <tr><td><h3>Ημερομηνία</h3> </td><td colspan="2"><input type="text" name="cdate"></td></tr>
                    <tr>
                        <td colspan="3"><input type="submit" value="Εισαγωγή"></td>
                    </tr>
                </table>
               
                <input type="hidden" name="controlexams" value="register">
            </form>
    
    </body>
</html>
