<html>  
    <head>  
        <title>Logout</title> 
    </head>
    <body background="/Farm-Chat/images/chat2.jpg">
<%     
                session.setAttribute("LoginStatus", 0); 
                session.setAttribute("LoginFirstName", "");
                session.setAttribute("LoginLastName", "");
                session.setAttribute("LoginEmail", "");
                session.setAttribute("LoginPassword", "");
                response.sendRedirect("/Farm-Chat/index.html");
        
%>
         <h1>Logout was done successfully.</h1> 
         
                 <a href="/Farm-Chat/index.html"><b>Back</b></a>
                 
    </body> 
</html>
 