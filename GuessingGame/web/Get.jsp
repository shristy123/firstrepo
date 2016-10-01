<%-- 
    Document   : Get
    Created on : Jun 10, 2016, 10:48:45 AM
    Author     : DELL
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
            out.println(session.getAttribute("tar"));
        %>
    </body>
</html>
