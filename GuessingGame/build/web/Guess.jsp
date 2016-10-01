<%-- 
    Document   : Guess
    Created on : Jun 10, 2016, 10:23:14 AM
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
        <h1>Guessing Game</h1>
        <%
            int attempts = 1;
            int target = 0;
            int guess = 1;
            
            if(session.isNew())
            {
                target = (int)(Math.random() * 100);
                out.println("Welcome to guessing game");
                
                session.setAttribute("tar", target);
                
                session.setAttribute("target", "" + target);
                session.setAttribute("attempts","1");
            }
            else
            {
                target = Integer.parseInt(session.getAttribute("target").toString());
                target = Integer.parseInt(session.getAttribute("attempts").toString());
                attempts++;
                session.setAttribute("attempts", "" + attempts);
                guess = Integer.parseInt(request.getParameter("guess"));
            }
        %>
        Number of attempts <%=  attempts%>
        <br>
        <%
            if(guess == target)
            {
                out.println("Congratulation ! You got it Lets start a new game");
                target = (int)(Math.random() * 100);
                session.setAttribute("target", "" + target);
                session.setAttribute("attempts", "1");
            }
            else
            {
                if(guess<target)
                    out.print("Aim Higher");
                else
                    out.println("Aim Lower");
            }
        %>
        <br>
        <form action="Guess.jsp" method="post">
            Enter your guess : <input type="text" id="guessInput" name="guess">
            <input type="submit" value="Send">
        </form>
        <script>
            document.all.guessInput.focus();
        </script>
    </body>
</html>
