<%-- 
    Document   : index
    Created on : Aug 8, 2017, 12:08:50 AM
    Author     : patrick
--%>

<%@page import="com.mymaven.webservices.GetRandomQuestionsClient"%>
<%@page import="com.mymaven.classes.Contact"%>
<%@page import="com.mymaven.classes.Answer2"%>
<%@page import="com.mymaven.webservices.UserResultClient"%>
<%@page import="com.mymaven.classes.Question2"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.mymaven.classes.Answer"%>
<%@page import="com.mymaven.webservices.InsertAnswerClient"%>
<%@page import="com.mymaven.classes.Examination"%>
<%@page import="com.mymaven.webservices.InsertExamAnswerClient"%>
<%@page import="com.mymaven.classes.Exam"%>
<%@page import="com.mymaven.webservices.InsertExamClient"%>
<%@page import="com.mymaven.webservices.ActivateUsersClient"%>
<%@page import="com.mymaven.classes.ActivateUsers"%>
<%@page import="com.mymaven.webservices.InsertQuestionClient"%>
<%@page import="com.mymaven.webservices.LoggedUserServicesClient"%>
<%@page import="com.mymaven.classes.CheckLMess"%>
<%@page import="com.mymaven.webservices.CheckLoginClient"%>
<%@page import="com.mymaven.webservices.LoginClient"%>
<%@page import="com.mymaven.webservices.InsertCenterClient"%>
<%@page import="com.mymaven.classes.Center"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mymaven.classes.Question"%>
<%@page import="com.mymaven.classes.Rmess"%>
<%@page import="com.mymaven.classes.Users"%>
<%@page import="com.mymaven.webservices.RegisterClient"%>
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
        <%
                //ELEGXOS AN EXEI GINEI LOG IN
                
                //request.setCharacterEncoding("UTF-8");
                CheckLoginClient logclient = new CheckLoginClient();
                CheckLMess pointer = new CheckLMess();
                pointer = logclient.CheckLogin(CheckLMess.class,session.getId());
                session.setAttribute("isloggedin", pointer.getMess());
                logclient.close();
        %>
        <div class="mycontainer" >
          <!-- Begin container -->
            <!-- Begin Wrapper -->
            <div id="wrapper">
                <!-- Begin Header -->
                <div id="header">
                    <img src="kentro.jpg" style="width:125px;height:90px;">
                    <h2>Το καλύτερο</h2> 
                 <h1>Κεντρο Ερωτήσεων και Πιστοποιήσεων</h1>
                </div>
                <!-- End Header -->
                
                <!-- Begin Navigation -->
                <div id="navigation">
                    <ul>                      
                        <li class ="dropdown"> <a href="" > <h3>Αποτελέσματα</h3></a> 
                            <ul class="dropdown-content" >
                                <li> <a href="index.jsp?value=ur" > <h3>Users Results </h3></a> </li>
                                <li> <a href="index.jsp?value=cr" > <h3>Center Results </h3></a> </li>
                                <li> <a href="index.jsp?value=er" > <h3>Examination Results </h3></a> </li>
                                <li> <a href="index.jsp?value=idr" > <h3>Userid Results </h3></a> </li>
                            </ul>
                        </li>
                        <!--EPIPLEON EPILOGES ME LOG IN -->
                        <%if(pointer.getMess().equals("YES"))
                          {
                            //WS EXETAZOMENOS
                            if(session.getAttribute("role").equals("3"))
                            {%>
                              <li>  <a href="index.jsp?value=ustart"> <h3>Ερώτηση 1</h3> </a> </li>
                              <li> <a href="index.jsp?value=random2" > <h3>Ερώτηση 2</h3></a> </li>
                              <li> <a href="index.jsp?value=random3" > <h3>Ερώτηση 3</h3></a> </li>
                              <li> <a href="index.jsp?value=random4" > <h3>Ερώτηση 4</h3></a> </li>
                             <%}
                            //WS EXETASTIS
                            if(session.getAttribute("role").equals("2"))
                            {
                            %>
                             <li> <a href="index.jsp?value=start" > <h3>Εκκίνηση Εξέτασης</h3></a> </li>
                            <%}
                            //WS ADMIN
                            if(session.getAttribute("role").equals("1"))
                            {
                            %>
                             <li> <a href="index.jsp?value=questions" > <h3>Εισαγωγή Ερωτήσεων</h3></a> </li>
                             <li> <a href="index.jsp?value=register" > <h3>Εισαγωγή Υποψηφίου ή Διαχειριστή</h3></a> </li>
                             <li> <a href="index.jsp?value=center" > <h3>Εισαγωγή Εξεταστικών Κέντρων</h3></a> </li>
                             <li> <a href="index.jsp?value=iexam" > <h3>Εισαγωγή Εξέτασης</h3></a> </li>
                            <%}
                            
                          }
                         %>
                    </ul>
                </div>
                <!-- End Navigation -->
                <!-- Begin Left Column -->
                <div id="leftcolumn"> 
                    
                    <% 
                        if (request.getParameterMap().containsKey("value")) {
                            
                            if (request.getParameter("value").equals("index")) {
                    %>
                             <jsp:include page="default.jsp" />
                    <%      }
                             else if(request.getParameter("value").equals("ur")){
                                %>
                             <jsp:include page="userresults.jsp" />   
                       <%    
                             }
                             else if(request.getParameter("value").equals("cr")){
                                %>
                             <jsp:include page="centerresults.jsp" />   
                       <%    
                             }
                             else if(request.getParameter("value").equals("er")){
                                %>
                             <jsp:include page="examinationresults.jsp" />   
                       <%    
                             }
                            else if(request.getParameter("value").equals("idr")){
                                %>
                             <jsp:include page="useridresults.jsp" />   
                       <%    
                             }
                            //SHOW REGISTRATION FORM
                            else if(request.getParameter("value").equals("register")){
                                %>
                             <jsp:include page="registration2.jsp" />   
                       <%    
                             }
                         else if(request.getParameter("value").equals("center")){
                                %>
                             <jsp:include page="insertcenters.jsp" />   
                       <%    
                             }
                         else if(request.getParameter("value").equals("questions")){
                                %>
                             <jsp:include page="insertquestion.jsp" />   
                       <%    
                             } 
                          else if(request.getParameter("value").equals("iexam")){
                        %>
                             <jsp:include page="insertexam.jsp" /> 
                       <%    
                             }

                           else if(request.getParameter("value").equals("random2")){
                                %>
                             <jsp:include page="randomquestions2.jsp" />   
                       <%    
                             }
                            else if(request.getParameter("value").equals("random3")){
                                %>
                             <jsp:include page="randomquestions3.jsp" />   
                       <%    
                             }
                        else if(request.getParameter("value").equals("random4")){
                                %>
                             <jsp:include page="randomquestions4.jsp" />   
                       <%    
                             }

                         else if(request.getParameter("value").equals("ustart")){
GetRandomQuestionsClient client=new GetRandomQuestionsClient();
                   ArrayList<Question2> les=new ArrayList<Question2>();
                   les=client.getQuestion();
                   session.setAttribute("abc", les);
                                %>
                             <jsp:include page="randomquestions.jsp" />
                             <%                           
                       }
                          else if(request.getParameter("value").equals("start")){
                                %>
                             <jsp:include page="start.jsp" />
                             <%                           
                       }
                       }

                       else if(request.getParameterMap().containsKey("controlregvalue"))
                        {
                            if (request.getParameter("name").length() == 0) {
                                %> <jsp:include page="registration2.jsp" /> <%
                                out.print("<span class=\"errorSpan\">Πρέπει να εισάγετε όνομα</span>");
                            }  else if (request.getParameter("username").length() == 0) {
                                %> <jsp:include page="registration2.jsp" /> <%
                                out.print("<span class=\"errorSpan\">Πρέπει να εισάγετε Username</span>");
                            } else if (request.getParameter("pass").length() == 0) {
                                %> <jsp:include page="registration2.jsp" /> <%
                                    out.print("<span class=\"errorSpan\">Πρέπει να εισάγετε Password</span>");
                              }                            
                              //SWSTA STOIXEIA
                              else {                                 
                                    RegisterClient client = new RegisterClient();                                 
                                    Users u = new Users(request.getParameter("name"), Integer.valueOf(request.getParameter("role")), request.getParameter("username"), request.getParameter("pass"));
                                    Rmess message = client.Register(u, Rmess.class);
                                    client.close();
                                    if (message.getMessage().equals("YES")) {
                                        %>
                                        <jsp:include page="registration2.jsp" /> 
                                        <%
                                        out.print("<span class=\"successSpan\">Επιτυχής εγγραφή!</span>");
                                    } else {
                                        %>
                                        <jsp:include page="registration2.jsp" />
                                        <%
                                        out.print("<span class=\"errorSpan\">" + message.getSqlmess() + "</span>");
                                    }
                                }
                        }
                        //PROCESS EISAGWGI KENTROU
                        else if(request.getParameterMap().containsKey("controlcenter"))
                        {
                            if (request.getParameter("cname").length() == 0) {
                                %> <jsp:include page="insertcenters.jsp" /> <%
                                out.print("<span class=\"errorSpan\">Πρέπει να εισάγετε όνομα</span>");
                            }  else if (request.getParameter("address").length() == 0) {
                                %> <jsp:include page="insertcenters.jsp" /> <%
                                out.print("<span class=\"errorSpan\">Πρέπει να εισάγετε Username</span>");
                                }
                              //SWSTA STOIXEIA
                              else { System.out.println("HERE");
                                    InsertCenterClient client = new InsertCenterClient();
                                         System.out.println("HERE2");
                                    Center il = new Center(request.getParameter("cname"), request.getParameter("address"));
                                    System.out.println("HERE3");
                                    Rmess message = client.InsertCenter(il, Rmess.class);
                                    client.close();
                               System.out.println("HERE4");
                                    if (message.getMessage().equals("YES")) {
                                        %>
                                        <jsp:include page="insertcenters.jsp" /> 
                                        <%
                                        out.print("<span class=\"successSpan\">Επιτυχής εγγραφή!</span>");
                                    } else {
                                        %>
                                        <jsp:include page="insertcenters.jsp" />
                                        <%
                                        out.print("<span class=\"errorSpan\">" + message.getSqlmess() + "</span>");
                                    }
                                }
                        }

                        //PROCESS EISAGWGI APANTHSHS
                        else if(request.getParameterMap().containsKey("tanswer"))
                        {
                            if (request.getParameter("answertext").length() == 0) {
                                %> <jsp:include page="randomquestions.jsp" /> <%
                                out.print("<span class=\"errorSpan\">Πρέπει να εισάγετε απάντηση</span>");
                            }  
                              //SWSTA STOIXEIA
                              else {
                                     ArrayList<Question2> l = (ArrayList<Question2>)session.getAttribute("abc");
                                    InsertAnswerClient client = new InsertAnswerClient();
                                    SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
                                    SimpleDateFormat sdft = new SimpleDateFormat("HH:mm:ss");
                                    String date = sdf.format(new Date());
                                    String time = sdft.format(new Date());
                                    Answer ans1= new Answer(request.getParameter("answertext"),l,date,time,0,String.valueOf(session.getAttribute("username")));
                                    Rmess message = client.InsertAnswer(ans1,Rmess.class);
                                    client.close();
                                    if (message.getMessage().equals("YES")) {
                                        %>
                                        <jsp:include page="randomquestions.jsp" /> 
                                        <%
                                        out.print("<span class=\"successSpan\">Επιτυχής εγγραφή!</span>");
                                    } else {
                                        %>
                                        <jsp:include page="randomquestions.jsp" />
                                        <%
                                        out.print("<span class=\"errorSpan\">" + message.getSqlmess() + "</span>");
                                    }
                                }
                          }
                            //PROCESS EISAGWGI APANTHSHS2
                         else if(request.getParameterMap().containsKey("tanswer2"))
                        {
                            if (request.getParameter("answertext22").length() == 0) {
                                %> <jsp:include page="randomquestions2.jsp" /> <%
                                out.print("<span class=\"errorSpan\">Πρέπει να εισάγετε απάντηση</span>");
                            }  
                              //SWSTA STOIXEIA
                              else {
                                     ArrayList<Question2> l = (ArrayList<Question2>)session.getAttribute("abc");
                                    InsertAnswerClient client = new InsertAnswerClient();
                                    SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
                                    SimpleDateFormat sdft = new SimpleDateFormat("HH:mm:ss");
                                    String date = sdf.format(new Date());
                                    String time = sdft.format(new Date());
                                    Answer ans1= new Answer(request.getParameter("answertext22"),l,date,time,1,String.valueOf(session.getAttribute("username")));
                                    Rmess message = client.InsertAnswer(ans1,Rmess.class);
                                    client.close();
                                    if (message.getMessage().equals("YES")) {
                                        %>
                                        <jsp:include page="randomquestions2.jsp" /> 
                                        <%
                                        out.print("<span class=\"successSpan\">Επιτυχής εγγραφή!</span>");
                                    } else {
                                        %>
                                        <jsp:include page="randomquestions2.jsp" />
                                        <%
                                        out.print("<span class=\"errorSpan\">" + message.getSqlmess() + "</span>");
                                    }
                                }
                           }

                                            //PROCESS EISAGWGI APANTHSHS 3
                            else if(request.getParameterMap().containsKey("tanswer3"))
                        {
                            if (request.getParameter("answertext33").length() == 0) {
                                %> <jsp:include page="randomquestions3.jsp" /> <%
                                out.print("<span class=\"errorSpan\">Πρέπει να εισάγετε απάντηση</span>");
                            }  
                              //SWSTA STOIXEIA
                              else {
                                     ArrayList<Question2> l = (ArrayList<Question2>)session.getAttribute("abc");
                                    InsertAnswerClient client = new InsertAnswerClient();
                                    SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
                                    SimpleDateFormat sdft = new SimpleDateFormat("HH:mm:ss");
                                    String date = sdf.format(new Date());
                                    String time = sdft.format(new Date());
                                    Answer ans1= new Answer(request.getParameter("answertext33"),l,date,time,2,String.valueOf(session.getAttribute("username")));
                                    Rmess message = client.InsertAnswer(ans1,Rmess.class);
                                    client.close();
                                    if (message.getMessage().equals("YES")) {
                                        %>
                                        <jsp:include page="randomquestions3.jsp" /> 
                                        <%
                                        out.print("<span class=\"successSpan\">Επιτυχής εγγραφή!</span>");
                                    } else {
                                        %>
                                        <jsp:include page="randomquestions3.jsp" />
                                        <%
                                        out.print("<span class=\"errorSpan\">" + message.getSqlmess() + "</span>");
                                    }
                                }
                        }

                                            //PROCESS EISAGWGI APANTHSHS 4
                        else if(request.getParameterMap().containsKey("tanswer4"))
                        {
                            if (request.getParameter("answertext44").length() == 0) {
                                %> <jsp:include page="randomquestions4.jsp" /> <%
                                out.print("<span class=\"errorSpan\">Πρέπει να εισάγετε απάντηση</span>");
                            }  
                              //SWSTA STOIXEIA
                              else {
                                     ArrayList<Question2> l = (ArrayList<Question2>)session.getAttribute("abc");
                                    InsertAnswerClient client = new InsertAnswerClient();
                                    SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
                                    SimpleDateFormat sdft = new SimpleDateFormat("HH:mm:ss");
                                    String date = sdf.format(new Date());
                                    String time = sdft.format(new Date());
                                    Answer ans1= new Answer(request.getParameter("answertext44"),l,date,time,3,String.valueOf(session.getAttribute("username")));
                                    Rmess message = client.InsertAnswer(ans1,Rmess.class);
                                    client.close();
                                    if (message.getMessage().equals("YES")) {
                                        %>
                                        <jsp:include page="randomquestions4.jsp" /> 
                                        <%
                                        out.print("<span class=\"successSpan\">Επιτυχής εγγραφή!</span>");
                                    } else {
                                        %>
                                        <jsp:include page="randomquestions4.jsp" />
                                        <%
                                        out.print("<span class=\"errorSpan\">" + message.getSqlmess() + "</span>");
                                    }
                                }
                        }

                           //PROCESS EISAGWGI ERWTISIS
                       else if(request.getParameterMap().containsKey("controlquestion"))
                        {
                            if (request.getParameter("qname").length() == 0) {
                                %> <jsp:include page="insertquestion.jsp" /> <%
                                out.print("<span class=\"errorSpan\">Πρέπει να εισάγετε όνομα</span>");
                            }  else if (request.getParameter("answer1").length() == 0) {
                                %> <jsp:include page="insertquestion.jsp" /> <%
                                out.print("<span class=\"errorSpan\">Πρέπει να εισάγετε απάντηση 1</span>");
                                }
                                else if (request.getParameter("answer2").length() == 0) {
                                %> <jsp:include page="insertquestion.jsp" /> <%
                                out.print("<span class=\"errorSpan\">Πρέπει να εισάγετε απάντηση 2</span>");
                                }
                               else if (request.getParameter("answer3").length() == 0) {
                                %> <jsp:include page="insertquestion.jsp" /> <%
                                out.print("<span class=\"errorSpan\">Πρέπει να εισάγετε απάντηση 3</span>");
                                }
                               else if (request.getParameter("answer4").length() == 0) {
                                %> <jsp:include page="insertquestion.jsp" /> <%
                                out.print("<span class=\"errorSpan\">Πρέπει να εισάγετε απάντηση 4</span>");
                                }
                              else if (request.getParameter("righta").length() == 0) {
                                %> <jsp:include page="insertquestion.jsp" /> <%
                                out.print("<span class=\"errorSpan\">Πρέπει να εισάγετε απάντηση</span>");
                                }
                              //SWSTA STOIXEIA
                              else {                                 
                                    InsertQuestionClient client = new InsertQuestionClient();                                 
                                    Question il = new Question(request.getParameter("qname"), request.getParameter("answer1"), request.getParameter("answer2"), request.getParameter("answer3"), request.getParameter("answer4"),request.getParameter("righta"));
                                    Rmess message = client.InsertQuestion(il, Rmess.class);
                                    client.close();
                                    if (message.getMessage().equals("YES")) {
                                        %>
                                        <jsp:include page="insertquestion.jsp" /> 
                                        <%
                                        out.print("<span class=\"successSpan\">Επιτυχής εισαγωγή!</span>");
                                    } else {
                                        %>
                                        <jsp:include page="insertquestion.jsp" />
                                        <%
                                        out.print("<span class=\"errorSpan\">" + message.getSqlmess() + "</span>");
                                    }
                                }
                        }
                       //PROCESS Insert exams
                        else if(request.getParameterMap().containsKey("controlexams"))
                        {
                            if (request.getParameter("kentro").length() == 0) {
                                %> <jsp:include page="insertexam.jsp" /> <%
                                out.print("<span class=\"errorSpan\">Πρέπει να εισάγετε όνομα κέντρου</span>");
                            }  else if (request.getParameter("cdate").length() == 0) {
                                %> <jsp:include page="insertexam.jsp" /> <%
                                out.print("<span class=\"errorSpan\">Πρέπει να εισάγετε ημερομηνία 1</span>");                           
                              }                             
                              //SWSTA STOIXEIA
                              else {
                                    InsertExamClient client = new InsertExamClient();                                 
                                    Exam il = new Exam(request.getParameter("kentro"), request.getParameter("cdate"));
                                    Rmess message = client.InsertExam(il, Rmess.class);
                                    client.close();
                                    if (message.getMessage().equals("YES")) {
                                        %>
                                        <jsp:include page="insertexam.jsp" /> 
                                        <%
                                        out.print("<span class=\"successSpan\">Επιτυχής εισαγωγή!</span>");
                                    } else {
                                        %>
                                        <jsp:include page="insertexam.jsp" />
                                        <%
                                        out.print("<span class=\"errorSpan\">" + message.getSqlmess() + "</span>");
                                    }
                                }
                        } 


                       //PROCESS start exetasi
                        else if(request.getParameterMap().containsKey("eanswer"))
                        {
                            if (request.getParameter("answertext").length() == 0) {
                                %> <jsp:include page="start.jsp" /> <%
                                out.print("<span class=\"errorSpan\">Πρέπει να εισάγετε επιλογή</span>");
                            }                              
                              //SWSTA STOIXEIA
                              else {
                                    InsertExamAnswerClient client = new InsertExamAnswerClient();
                                   String str=request.getParameter("answertext");
                                    Rmess message = client.InsertExamAnswer(str,Rmess.class);
                                    if (message.getMessage().equals("YES")) {
                                        %>
                                        <jsp:include page="start.jsp" /> 
                                        <%
                                        out.print("<span class=\"successSpan\">Επιτυχής Eκκίνηση!</span>");
                                    } else {
                                        %>
                                        <jsp:include page="start.jsp" />
                                        <%
                                        out.print("<span class=\"errorSpan\">" + message.getSqlmess() + "</span>");
                                    }
                                } 
                        }


                         //PROCESS APOTELESMATA
                        else if(request.getParameterMap().containsKey("uresult"))
                        {
                            if (request.getParameter("answertext8").length() == 0) {
                                %> <jsp:include page="userresults.jsp" /> <%
                                out.print("<span class=\"errorSpan\">Πρέπει να εισάγετε επιλογή</span>");
                            }                              
                              //SWSTA STOIXEIA
                              else {
                                    %><table border="2" id="resulttable"><%
        
                                        UserResultClient client = new UserResultClient ();
                                        ArrayList<Answer2> ar8=new ArrayList<Answer2>();
                                        ar8=client.getAnswer(request.getParameter("answertext8"));

                                       for(int k=0;k<ar8.size();k++)
                                       {

                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println(k);
                                       out.println("</th>");
                                       out.println("</tr>");
                                                                             
                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Name: " );
                                       out.println(ar8.get(k).getName());
                                       out.println("</th>");
                                       out.println("</tr>");
                                       
                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Persons Id: " );
                                       out.println(ar8.get(k).getPersonsid());
                                       out.println("</th>");
                                       out.println("</tr>");
                                       
                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Username: " );
                                       out.println(ar8.get(k).getUsername());
                                       out.println("</th>");
                                       out.println("</tr>");

                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Question: " );
                                       out.println(ar8.get(k).getQuestion());
                                       out.println("</th>");
                                       out.println("</tr>");

                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Choice: " );
                                       out.println(ar8.get(k).getChoice());
                                       out.println("</th>");
                                       out.println("</tr>");

                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Right Answer: " );
                                       out.println(ar8.get(k).getRighta());
                                       out.println("</th>");
                                       out.println("</tr>");
                                       
                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Exam code: " );
                                       out.println(ar8.get(k).getExamid());
                                       out.println("</th>");
                                       out.println("</tr>");

                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Date: " );
                                       out.println(ar8.get(k).getDt());
                                       out.println("</th>");
                                       out.println("</tr>");
                                       
                                        out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Time: " );
                                       out.println(ar8.get(k).getTime());
                                       out.println("</th>");
                                       out.println("</tr>");

                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Center Name: " );
                                       out.println(ar8.get(k).getCentern());
                                       out.println("</th>");
                                       out.println("</tr>");
                                        out.println ("<tr>");
                                        
                                        out.println("</tr>");
                                        out.println ("<tr>");
                                        out.println("</tr>");
                                         out.println ("<tr>");
                                        out.println("</tr>");
                                        out.println ("<tr>");
                                        out.println("</tr>");

                                    } 
                             
                             %>   </table> <%
                                } 
                        }
          
                     
                      //PROCESS APOTELESMATA
                        else if(request.getParameterMap().containsKey("cresult"))
                        {
                            if (request.getParameter("answertext9").length() == 0) {
                                %> <jsp:include page="centerresults.jsp" /> <%
                                out.print("<span class=\"errorSpan\">Πρέπει να εισάγετε επιλογή</span>");
                            }                              
                              //SWSTA STOIXEIA
                              else {
                                    %><table border="2" id="resulttable"><%
        
                                        UserResultClient client = new UserResultClient ();
                                        ArrayList<Answer2> ar8=new ArrayList<Answer2>();
                                        ar8=client.getAnswerCenter(request.getParameter("answertext9"));

                                       for(int k=0;k<ar8.size();k++)
                                       {

                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println(k);
                                       out.println("</th>");
                                       out.println("</tr>");
                                       
                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Center Name: " );
                                       out.println(ar8.get(k).getCentern());
                                       out.println("</th>");
                                       out.println("</tr>");
                                       out.println ("<tr>");
                                       
                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Name: " );
                                       out.println(ar8.get(k).getName());
                                       out.println("</th>");
                                       out.println("</tr>");
                                       
                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Username: " );
                                       out.println(ar8.get(k).getUsername());
                                       out.println("</th>");
                                       out.println("</tr>");
                                       
                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Exam code: " );
                                       out.println(ar8.get(k).getExamid());
                                       out.println("</th>");
                                       out.println("</tr>");

                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Persons Id: " );
                                       out.println(ar8.get(k).getPersonsid());
                                       out.println("</th>");
                                       out.println("</tr>");

                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Question: " );
                                       out.println(ar8.get(k).getQuestion());
                                       out.println("</th>");
                                       out.println("</tr>");

                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Choice: " );
                                       out.println(ar8.get(k).getChoice());
                                       out.println("</th>");
                                       out.println("</tr>");

                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Right Answer: " );
                                       out.println(ar8.get(k).getRighta());
                                       out.println("</th>");
                                       out.println("</tr>");

                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Date: " );
                                       out.println(ar8.get(k).getDt());
                                       out.println("</th>");
                                       out.println("</tr>");
                                       
                                        out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Time: " );
                                       out.println(ar8.get(k).getTime());
                                       out.println("</th>");
                                       out.println("</tr>");
                                                                             
                                        out.println("</tr>");
                                        out.println ("<tr>");
                                        out.println("</tr>");
                                         out.println ("<tr>");
                                        out.println("</tr>");
                                        out.println ("<tr>");
                                        out.println("</tr>");

                                    } 
                             
                             %>   </table> <%
                                } 
                        }



                          else if(request.getParameterMap().containsKey("eresult"))
                        {
                            if (request.getParameter("answertext10").length() == 0) {
                                %> <jsp:include page="examinationresults.jsp" /> <%
                                out.print("<span class=\"errorSpan\">Πρέπει να εισάγετε επιλογή</span>");
                            }                              
                              //SWSTA STOIXEIA
                              else {
                                    %><table border="2" id="resulttable"><%
        
                                        UserResultClient client = new UserResultClient ();
                                        ArrayList<Answer2> ar8=new ArrayList<Answer2>();
                                        ar8=client.getAnswerExam(request.getParameter("answertext10"));

                                       for(int k=0;k<ar8.size();k++)
                                       {

                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println(k);
                                       out.println("</th>");
                                       out.println("</tr>");                                      
                                       
                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Exams Id: " );
                                       out.println(ar8.get(k).getExamid());
                                       out.println("</th>");
                                       out.println("</tr>");
                                       
                                       
                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Name: " );
                                       out.println(ar8.get(k).getName());
                                       out.println("</th>");
                                       out.println("</tr>");
                                       
                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Username: " );
                                       out.println(ar8.get(k).getUsername());
                                       out.println("</th>");
                                       out.println("</tr>");
                                       
                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Center Name: " );
                                       out.println(ar8.get(k).getCentern());
                                       out.println("</th>");
                                       out.println("</tr>");
                                       out.println ("<tr>");

                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Persons Id: " );
                                       out.println(ar8.get(k).getPersonsid());
                                       out.println("</th>");
                                       out.println("</tr>");

                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Question: " );
                                       out.println(ar8.get(k).getQuestion());
                                       out.println("</th>");
                                       out.println("</tr>");

                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Choice: " );
                                       out.println(ar8.get(k).getChoice());
                                       out.println("</th>");
                                       out.println("</tr>");

                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Right Answer: " );
                                       out.println(ar8.get(k).getRighta());
                                       out.println("</th>");
                                       out.println("</tr>");

                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Date: " );
                                       out.println(ar8.get(k).getDt());
                                       out.println("</th>");
                                       out.println("</tr>");
                                       
                                        out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Time: " );
                                       out.println(ar8.get(k).getTime());
                                       out.println("</th>");
                                       out.println("</tr>");
                                                                             
                                        out.println("</tr>");
                                        out.println ("<tr>");
                                        out.println("</tr>");
                                        out.println ("<tr>");
                                        out.println("</tr>");
                                        out.println ("<tr>");
                                        out.println("</tr>");

                                    } 
                             
                             %>   </table> <%
                                } 
                        }


                        else if(request.getParameterMap().containsKey("userresult"))
                        {
                            if (request.getParameter("answertext11").length() == 0) {
                                %> <jsp:include page="useridresults.jsp" /> <%
                                out.print("<span class=\"errorSpan\">Πρέπει να εισάγετε επιλογή</span>");
                            }                              
                              //SWSTA STOIXEIA
                              else {
                                    %><table border="2" id="resulttable"><%
        
                                        UserResultClient client = new UserResultClient ();
                                        ArrayList<Answer2> ar8=new ArrayList<Answer2>();
                                        ar8=client.getAnswerUserid(request.getParameter("answertext11"));

                                       for(int k=0;k<ar8.size();k++)
                                       {

                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println(k);
                                       out.println("</th>");
                                       out.println("</tr>");                                      
                                       


                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Persons Id: " );
                                       out.println(ar8.get(k).getPersonsid());
                                       out.println("</th>");
                                       out.println("</tr>");
                                       
                                       
                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Name: " );
                                       out.println(ar8.get(k).getName());
                                       out.println("</th>");
                                       out.println("</tr>");
                                       
                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Username: " );
                                       out.println(ar8.get(k).getUsername());
                                       out.println("</th>");
                                       out.println("</tr>");

                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Question: " );
                                       out.println(ar8.get(k).getQuestion());
                                       out.println("</th>");
                                       out.println("</tr>");

                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Choice: " );
                                       out.println(ar8.get(k).getChoice());
                                       out.println("</th>");
                                       out.println("</tr>");

                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Right Answer: " );
                                       out.println(ar8.get(k).getRighta());
                                       out.println("</th>");
                                       out.println("</tr>");

                                       out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Date: " );
                                       out.println(ar8.get(k).getDt());
                                       out.println("</th>");
                                       out.println("</tr>");
                                       
                                        out.println ("<tr>");
                                       out.println("<th>");
                                       out.println("Time: " );
                                       out.println(ar8.get(k).getTime());
                                       out.println("</th>");
                                       out.println("</tr>");
                                                                             
                                        out.println("</tr>");
                                        out.println ("<tr>");
                                        out.println("</tr>");
                                        out.println ("<tr>");
                                        out.println("</tr>");
                                        out.println ("<tr>");
                                        out.println("</tr>");

                                    } 
                             
                             %>   </table> <%
                                } 
                        }
                        //SHOW DEFAULT PAGE
                        else{
                             
                            %>
                            <jsp:include page="default.jsp" />
                       <%   }
                        
                    %>
                    
                </div>
                <!-- End Left Column -->
                
                <!-- Begin Right Column -->
                <div id="rightcolumn">
                    <!-- EPILOGES XWRIS LOG IN -->
                    <%if(!pointer.getMess().equals("YES"))
                    {
                    %>
                    <img src="login_pic.png" alt="Είσοδος" style="width:110px;height:110px;">
                        <h2>Σύνδεση Χρήστη </h2>
                    <form id="theForm"  action="controlLogin.jsp" method="POST">
                        <div class="row">
                            <input type="text" name="username" placeholder="Username" ><br>
                        </div>
                        <div class="row">
                            <input type="password" name="pass" placeholder="Password"><br>
                        </div>
                        <div class="row">
                            <input type="submit" value="Είσοδος" onclick="Timer()"> 
                        </div>
                    </form>
                        <% 
                           if(session.getAttribute("wrongCredentials")!=null)
                           {
                            if(session.getAttribute("wrongCredentials").equals("2"))
                                out.print("<span class=\"errorSpan\">Invalid username or/and password.Please try again.</span>");
                            else if(session.getAttribute("wrongCredentials").equals("1"))
                                out.print("<span class=\"errorSpan\">Username and password are required.</span>");
                            
                            session.removeAttribute("wrongCredentials");
                           }
                                                     
                        %>
                    <!--EPILOGES ME LOG IN -->
                        <%
                     }
                     else
                     {
                        %>
                        <form id = "theForm" action="controlLogout.jsp">
                            <div class="row">
                                <h2>Καλώς Ήρθες <%=session.getAttribute("username")%>!</h2>
                                <input type="submit" value="Έξοδος">
                            </div>
                        </form>
                    <%    
                     }
                        %>
                </div>
                <!-- End Right Column -->
                <!-- Begin Footer -->
                <div id="footer"> 
                    © Κέντρο Πιστοποιήσεων | All Rights Reserved
                </div>
                <!-- End Footer -->
            </div>
            <!-- End Wrapper -->
        </div>
        <!--End of container -->
        
    </body>
</html>
