<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profil Employe</title>
</head>
<body>
<form action="profilClient" method="post">

<table>
<tr><td>Login:</td><td><input type="text" name="login" value = <%Object nom =session.getAttribute("nom");%><%=nom%> readonly="readonly"></input></td></tr>
<tr><td>Password:</td><td><input type="password" name="password" value = <%Object mdp =session.getAttribute("mdp");%><%=mdp%> readonly="readonly"></input></td></tr>
<tr><td>Nom:</td><td><input type="text" name="nomEmp"></input></td></tr>
<tr><td>Prénom:</td><td><input type="text" name="preEmp"></input></td></tr>
<tr><td><input type="submit" name="Soumettre" value="Soumettre"/><input type="reset" name="reset" value="Rafraichir"/></td></tr>   
</table>
</form>
</body>
</html>