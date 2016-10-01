<%-- 
    Document   : SetEmail
    Created on : Jun 4, 2016, 4:11:57 AM
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
        <%@include  file="HiperLinkPage.jsp" %>
        
        <%
            if(request.getParameter("user_email") != null)
            {
                String email = request.getParameter("user_email");
                String userName = session.getAttribute("userName").toString();
                
                application.setAttribute(userName,email);
              
                
                out.println("Email has been set !");
            }
        %>
        
        
        <h1>Please Enter Your Email !</h1>
        <form action="" method="post">
            Email : <input type="text" name="user_email"/>
            <input type="submit" value="Set"/>
        </form>
            
    </body>
</html>
