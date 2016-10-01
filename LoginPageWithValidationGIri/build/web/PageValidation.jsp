<%-- 
    Document   : PageValidation
    Created on : Jun 4, 2016, 4:05:16 AM
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
            if(session.getAttribute("user") != "login")
            {
                session.setAttribute("user","page");
                response.sendRedirect("index.jsp");
            }
            
            
         %>
    </body>
</html>
