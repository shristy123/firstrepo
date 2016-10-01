<%-- 
    Document   : index
    Created on : Jun 4, 2016, 3:33:53 AM
    Author     : akash gupta
--%>

<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if(session.getAttribute("user") == "faild")
            {
                out.println("<h3>Login Faild ! </h3>");
            }
            
            if(session.getAttribute("user") == "logout")
            {
                out.println("<h3>You have Success Fully Log Out Mr. "+ session.getAttribute("userName")+" ! </h3>");
            }          
            
            if(session.getAttribute("user") == "page")
            {
                out.println("<h3>Please Login First !</h3>");
            }
        %>
        
        <h1 align="center">Login Here</h1>
        <form action="LoginProcess" method="post">
            <table>
                <tr>
                    <td>
                        User Name : 
                    </td>
                    
                    <td>
                        <input type="text" name="user_name" />
                    </td>
                </tr>
                
                
                
                <tr>
                    <td>
                        Password : 
                    </td>
                    
                    <td>
                        <input type="password" name="user_pass" />
                    </td>
                </tr>
                
                
                
                <tr>
                    <td align="center">
                        <input type="submit" value="submit" />
                    </td>
                </tr>
            </table>
        </form>
        
          
          
          <%
             // out.println("GLKSJDf");
             if(session.getAttribute("user") == "email")
              {
                 // out.println("rahu");
                  
                Enumeration s =application.getInitParameterNames();
                
               
              //  out.println(s);
                while(s.hasMoreElements())
                {
                    String userName=s.nextElement().toString();
                            
             
                   // application.setAttribute("Name", "123");
             
                      
                    String email = (String)application.getAttribute(userName);
                    
                    out.println("<br/>" + userName + " ...... " + email + "<br/>");
                    
                }
             }
                       
              %>
    </body>
</html>
