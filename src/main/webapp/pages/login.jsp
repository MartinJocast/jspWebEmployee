<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<title>Login</title>
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
	
	<div class="container login-container">
		<div class="row">
			<div class="col-md-6 login-form-2">
				<div class="login-logo">
					<img src="https://image.ibb.co/n7oTvU/logo_white.png" alt="" />
				</div>
				<h3>Connection</h3>
				<form action="login" method="post">
					<div class="form-group">
						<input type="text" class="form-control"
							placeholder="Login *" name="login"/>
					</div>
					<div class="form-group">
						<input type="password" class="form-control"
							placeholder="Mot de passe *" name="pass"/>
					</div>
					<div class="form-group">
						<input type="submit" class="btnSubmit btn btn-success" value="Login" />
					</div>
					<div class="form-group">
						<a href="addUser.jsp" class="btnForgetPwd">Créer un nouveau compte</a>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>