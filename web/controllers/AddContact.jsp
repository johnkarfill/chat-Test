<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>  
<head> 
<title>Add Contact</title>
</head> 
<body>
<%
     
     String username = (String)session.getAttribute("LoginUsername");
     String friendname = request.getParameter("friendname");
    
try {
    String connectionURL = "jdbc:mysql://localhost:3306/register";
    Connection connection = null; 
    Class.forName("com.mysql.jdbc.Driver").newInstance(); 
    out.println("You Add: " + friendname);
    connection = DriverManager.getConnection(connectionURL, "root", "");
    
    if(!connection.isClosed())
        connection.createStatement();
    Statement st = connection.createStatement();
        st.executeUpdate("INSERT INTO contacts (Username,FriendName) " + "VALUES ('"+ username +"', '"+ friendname +"')");
 
    connection.close();
}catch(Exception ex){
    out.println("Unable to connect to database.");
}
%>
<div class="main-form">
       <form action="/Farm-Chat/view/Contacts.jsp" method="POST">
           <fieldset>
             
               <div class="form-body">
      
                   
                  
                   <div class="form-group text-center">
                       <button class="btn btn-default btn-lg text-right" type="submit">Back</button>
                       </div>
               </div>
           </fieldset>
       </form>
   </div>  
</html>