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
<h1>Employes Modification</h1>
<form action="EnregistrementEmploye" method="post">
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
			<input type="hidden" name="employe" value="<%= element.getId() %>"/>	
			</td>
			<td><input type="text" name="employe_nom" value="<%= element.getNom() %>"/></td>
			<td><input type="text" name="employe_prenom" value="<%= element.getPrenom() %>"/></td>
			<td><input type="text" name="employe_fonction" value="<%= element.getFonction() %>"/></td>
			<tr><td>Administrateur:</td><td><select name="employe_admin">
				<option value="Admin">Administrateur</option>
				<option value="NoAdmin">Non Administrateur</option>
			</select></td></tr>
			
			<td><input type="submit" Value="Modifier Employe" /></td>
			
			<td><input type="submit" Value="Supprimer Employe" /></td>
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