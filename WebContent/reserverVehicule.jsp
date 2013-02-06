<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import = "java.util.*"
import = "modele.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reserver Vehicule</title>
</head>
<body>
<form action=".\Reservation" Method="get">

	<label>Reservation d'un vehicule:</label>
   	<p>
   	<%
   	Vehicule v = (Vehicule)request.getAttribute("Vehicule");
   	List<Client> clients = (List<Client>)request.getAttribute("Clients");
   	List<Employe> employes = (List<Employe>)request.getAttribute("Employes");
   	%>
	   	<label>Vehicule: </label>
	   	<input type=hidden name="vehicule_id" value = "<% out.println(v.getId()); %>" >
	    <input type="text" name="Vehicule" readonly="readonly" value="<% out.println( v.getMarque() ); %>">
	</p>
	<p>   
	    <label>Client: <% out.println(clients.get(0).getNom() ); %>  </label>
	    
	    <input type=hidden name="client_id" value = "<% out.println(clients.get(0).getId()); %>" >
   	</p>
   	<p>
   	<label>Employe:  </label>
	    <select name="employe_id">
		<option value="<% out.println(employes.get(0).getId()); %>"><% out.println( employes.get(0).getLogin() ); %></option>
		<option value="<% out.println(employes.get(1).getId()); %>"><% out.println( employes.get(1).getLogin() ); %></option>
		<option value="<% out.println(employes.get(2).getId()); %>"><% out.println( employes.get(2).getLogin() ); %></option>
		</select>	   
   	</p>
   	<p>
   	<label>Date Debut: </label>
	    <input type="text" name="dateDebut" value="24/01/2012">	   
   	</p>
   	<p>
   	<label>Date Fin: </label>
	    <input type="text" name="dateFin" value="26/01/2012">	   
   	</p>
 	<input type="submit" Value="Reserver" />
</form>

</body>
</html>