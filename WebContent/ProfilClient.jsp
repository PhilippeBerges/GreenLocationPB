<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profil Client</title>
</head>
<body>
<form action="profilClient" method="post">

<table>
<tr><td>Login:</td><td><input type="text" name="login" value = <%Object nom =session.getAttribute("nom");%><%=nom%>></input></td></tr>
<tr><td><input type="hidden" name="password" value = <%Object mdp =session.getAttribute("mdp");%><%=mdp%>></input></td></tr>
<tr><td>Nom:</td><td><input type="text" name="nomCli" value = <%Object nomclient =session.getAttribute("nomclient");%><%=nomclient%>></input></td></tr>
<tr><td>Prénom:</td><td><input type="text" name="preCli" value = <%Object prenomclient =session.getAttribute("prenomclient");%><%=prenomclient%>></input></td></tr>
<tr><td>Adresse:</td><td><input type="text" name="adCli" value = <%Object adresseclient =session.getAttribute("adresseclient");%><%=adresseclient%>></input></td></tr>
<tr><td>Ville:</td><td><input type="text" name="villeCli" value = <%Object villeclient =session.getAttribute("villeclient");%><%=villeclient%>></input></td></tr>
<tr><td>Code Postal:</td><td><input type="text" name="cpCli" value = <%Object cpclient =session.getAttribute("cpclient");%><%=cpclient%>></input></td></tr>
<tr><td><input type="submit" name="Soumettre" value="Soumettre"/><input type="reset" name="reset" value="Rafraichir"/></td></tr>   
</table>
</form>
</body>
</html>