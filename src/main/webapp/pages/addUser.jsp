<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nouveau compte</title>
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
	<h3>Cr�er un nouveau compte</h3>

	<form action="userAdd" method="post">
		<label>Nom de l'employ�</label> <br>
		<input type="text" name="nom" placeholder="Nom" > <br>
		<label>Pr�nom de l'employ�</label> <br>
		<input type="text" name="prenom" placeholder="Pr�nom"> <br>
		<label>Titre de l'employ�</label> <br>
		<input type="text" name="titre" placeholder="Titre"> <br>
		<label>Date d'embauche</label> <br>
		<input type="date" name="dateDebut" placeholder="aaaa-mm-jj"> <br><br>
		<input type="submit" class="btn btn-success" value="Envoyer">
	</form>
</div>

</body>
</html>