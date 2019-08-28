<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Liste des employés</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script type="text/javascript" src="pages/js/alertDelete.js"></script>
</head>
<body>

	
<%@ include file="menuLogged.jsp" %>

	
<div class="container">
<table class="table table-hover table-bordered table-striped">
	<thead class="thead-dark">
	<tr>
		<th scope="col">#</th>
		<th scope="col">Prénom</th>
		<th scope="col">Nom</th>
		<th scope="col">Titre</th>
		<th scope="col">Date d'embauche</th>
		<th scope="col"></th>
		<th scope="col"></th>
	</tr>
	</thead>
	<c:forEach items="${list}" var="e">
	<tr>
		<th scope="row">${e.empId}</th>
		<td>${e.firstName}</td>
		<td>${e.lastName}</td>
		<td>${e.title}</td>
		<td>${e.startDate}</td>
	    <%-- <td><form action="getEmployee" method="post">
	   		<input type='hidden' name='id' value="${e.getEmpId()}"/>
		    <input type='submit' value='Modifier'/></form> 
		</td> --%>		
		<td><form action="getEmployee?id=${e.getEmpId()}" method="post">
     		<button type='submit' class="btn btn-info">Modifier</button></form>
		</td>        
	    <td><form action="employeeDelete?id=${e.getEmpId()}" method="post">
     		<input onclick="return confirmDelete()" type='submit' class="btn btn-danger" value="Supprimer"></form>
		</td>
	</tr>
	</c:forEach>
</table>
<br>        

</div>

</body>
</html>
