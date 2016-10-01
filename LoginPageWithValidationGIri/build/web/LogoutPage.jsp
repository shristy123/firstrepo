<%-- 
    Document   : LogoutPage
    Created on : Jun 4, 2016, 3:52:29 AM
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
        <%
            session.setAttribute("user","logout");
            response.sendRedirect("index.jsp");
            
            %>
    </body>
</html>
