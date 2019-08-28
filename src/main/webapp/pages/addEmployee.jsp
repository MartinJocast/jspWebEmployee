<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajout d'un employé</title>
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
	<h3>Ajouter un employé</h3>
	
	<form action="employeeAdd" method="post">
		<label>Nom</label> <br>
		<input type="text" name="nom" placeholder="Nom" > <br>
		<label>Prénom</label> <br>
		<input type="text" name="prenom" placeholder="Prénom"> <br>
		<label>Identifiant</label> <br>
		<input type="text" name="login" placeholder="Login"> <br>
		<label>Adresse Email</label> <br>
		<input type="text" name="mail" placeholder="Email"> <br>
		<label>Date de naissance</label> <br>
		<input type="date" name="dateNaissance" placeholder="aaaa-mm-jj"> <br><br>
		<input type="submit" class="btn btn-success" value="Envoyer">
	</form>
</div>

</body>
</html>