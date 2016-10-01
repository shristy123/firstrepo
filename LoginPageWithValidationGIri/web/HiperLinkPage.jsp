<%-- 
    Document   : HiperLinkPage
    Created on : Jun 4, 2016, 3:49:27 AM
    Author     : akash gupta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="PageValidation.jsp" %>
        <h1>Welcome <%= session.getAttribute("userName") %> </h1>
        <h4><a href="LogoutPage.jsp"> Logout </a> 
        
            <a href="Home.jsp" >  Home </a> 
            
            <a href="Services.jsp" > Services </a>
            
            <a href="About.jsp" > About </a>
            
            <a href="SetEmail.jsp"> SetEmail </a>
        </h4>
        <hr/>
    </body>
</html>
