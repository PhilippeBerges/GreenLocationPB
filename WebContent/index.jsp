<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    	               "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <head>
    	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    	<title>GlassFish JSP Page</title>
  </head>
  <body>
    <h1>Hello <%Object nom =session.getAttribute("nom");%><%=nom%> </h1>
    <form action="./Vehicules" method="get">
    <input type="submit"/>
    </form>
    <a href="ProfilClient.jsp">Profile Client</a>
    
    <form action="./AdministrationClient" method="get">
    <input type="submit" value="Liste clients"/>
    </form>
       <form action="logout" method="get">
    <input type="submit" value="Logout"/>
    </form>
    
  </body>
</html> 
