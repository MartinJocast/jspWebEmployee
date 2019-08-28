<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modification d'un employé</title>
</head>
<body>

<c:choose>
	<c:when test="${not empty login }">
		<%@ include file="menuLogged.jsp" %>
	</c:when>
	<c:otherwise>
		<%@ include file="menu.jsp" %>
	</c:otherwise>
</c:choose>

<div class="container">
	<h3>Modification d'un employé</h3>
	
	<form action="employeeUpdate" method="post">
		<input type="hidden" name="id" value="${emp.empId}"> <br>
		<label >Nom de l'employé</label> <br>
		<input type="text" name="nom" value="${emp.lastName}"> <br>
		<label>Prénom de l'employé</label> <br>
		<input type="text" name="prenom" value="${emp.firstName}"> <br>
		<label>Titre de l'employé</label> <br>
		<input type="text" name="titre" value="${emp.title}"> <br>
		<label>Date d'embauche</label> <br>
		<input type="date" name="dateDebut" value="${emp.startDate}"> <br><br>
		<input type="submit" class="btn btn-success" value="Envoyer">
	</form>
</div>
</body>
</html>