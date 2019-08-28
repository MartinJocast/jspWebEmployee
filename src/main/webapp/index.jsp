<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="UTF-8">
	<title>Accueil</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>

<body>

<c:choose>
	<c:when test="${not empty login }">
		<%@ include file="pages/menuLogged.jsp" %>
	</c:when>
	<c:otherwise>
		<%@ include file="pages/menu.jsp" %>
	</c:otherwise>
</c:choose>

	<div class="container">
	<br><br><br><br><h2 style="text-align: center">Bienvenue sur <em>Employee Management</em></h2>
	</div>

</body>
</html>
