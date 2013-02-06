<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import = "java.util.*"
import = "modele.Vehicule"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vehicules</title>
</head>
<body>
<h1>Vehicules List</h1>
<form action="./Reservation" method="post">
<table>
<tr><td><input type="hidden"  name="NumeroPage"  value="1"></td></tr>
<tr><td><input type="hidden"  name="table"  value="Vehicule"></td></tr>
<%
int i = 1;
List<Vehicule> vehList = (List<Vehicule>)request.getAttribute("Vehicules");
if (vehList.size()!=0)
	{	
		for (Iterator iter = vehList.iterator(); iter.hasNext();) 
		{	
			Vehicule element = (Vehicule) iter.next();
			%>
			<tr>
			<td>
			<input type="hidden" name="vehicule_id" value="<%= element.getId() %>"/>	
			</td>
			<%
			out.println("<td>" + element.getModele() +" </td>");
			out.println("<td>" + element.getMarque() + " </td>");
			out.println("<td>" + element.getCouleur() + "</td>");
			out.println("<td>" + element.getDisponibilite() + "</td>");
			%>
			<td><input type="submit" Value="Reserver" /></td>
			<!-- <td>
			<input type="submit" Value="Remplir le formulaire d'état" />		
			</td> -->
					</tr>
			
			<%
		}
	}
else
	{
		System.out.println("Records no found");
	}
%>

</table>
</form>
</body>
</html>