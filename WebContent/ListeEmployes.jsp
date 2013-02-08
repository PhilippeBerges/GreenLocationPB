<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import = "java.util.*"
import = "modele.Employe"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administration des employes</title>
</head>
<body>
<h1>Employes List</h1>
<form action="AdministrationEmploye" method="post">
<table>
<tr><td><input type="hidden"  name="NumeroPage"  value="1"></td></tr>
<tr><td><input type="hidden"  name="table"  value="Client"></td></tr>

<%
int i = 1;
List<Employe> empList = (List<Employe>)request.getAttribute("Employes");
if (empList.size()!=0)
	{	
		for (Iterator iter = empList.iterator(); iter.hasNext();) 
		{	
			Employe element = (Employe) iter.next();
			%>
			<tr>
			<td>
			<input type="hidden" name="client" value="<%= element.getId() %>"/>	
			</td>
			<td><input type="hidden" name="emp_nom" value="<%= element.getNom() %>"/></td>
			<td><input type="hidden" name="emp_prenom" value="<%= element.getPrenom() %>"/></td>
			<td><input type="hidden" name="emp_fonction" value="<%= element.getFonction() %>"/></td>
			<td><input type="hidden" name="emp_admin" value="<%= element.isAdmin() %>"/></td>
			<%
			out.println("<td>" + element.getNom() +" </td>");
			out.println("<td>" + element.getPrenom() + " </td>");
			out.println("<td>" + element.getFonction() + "</td>");
			out.println("<td>" + element.isAdmin() + "</td>");
			%>
			<td><input type="submit" Value="Administrer Employe" /></td>
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