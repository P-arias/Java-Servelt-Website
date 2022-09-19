<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
           <title>ToysWereUs</title>
           <link href ="styles\main.css" rel="stylesheet"> 
           <meta charset="utf-8">
           <meta name="viewport" content="width=device-width, initial-scale=1">
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
           <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
           <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
    </head>
    
   <body>
       
   <div id="page-container">
   <div id="content-wrap">
       
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                        <div class="navbar-header">
                      <a class="navbar-brand" href="index.jsp"><img src="images/ToysWereUs2.png" class="img-responsive img-rounded" alt="ToysWereUs" width="150px"></a>
                        </div>
                        <div>
                          <ul class="nav navbar-nav navbar-right">
                              
                            <li><a href="index.jsp">HOME</a></li>
                            <li><a href="about.jsp">ABOUT</a></li>
                            
                            <li><a style="display:${sessionScope['loggedin'] == 'true' ? 'none' : 'block'}" 
                                   href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> LOG IN</a></li>
                                   
                           <li><a style="display:${sessionScope['loggedin'] == 'true' ? 'none' : 'block'}" 
                                   href="signUp.jsp"> SIGN UP</a></li>
                           
                                   
                             <li><a style="display:${sessionScope['loggedin'] == 'true' ? 'block' : 'none'}" href="account.jsp">
                                    <span class="glyphicon glyphicon-user"></span> ACCOUNT</a></li>
                                   
                             
                            <li><a style="display:${sessionScope['loggedin'] == 'true' ? 'block' : 'none'}" href="LogOutSev">
                                    <span class="glyphicon glyphicon-log-out"></span> LOG OUT</a></li>
                                    
                                <li><a style="display:${sessionScope['loggedin'] == 'true' ? 'block' : 'none'}">
                                 Welcome, <c:out value="${sessionScope.user.firstName} "/></a></li>
                          </ul>
                       </div>
            </div>
      </nav>