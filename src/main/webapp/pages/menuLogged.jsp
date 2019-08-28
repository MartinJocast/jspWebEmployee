<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>menu</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>

 <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand text-white" href="redirectIndex">EMPLOYEE MANAGEMENT</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav ml-auto">
                   
                    <li class="nav-item ">
                        <a class="nav-link " href="employees"><i class="fa fa-th-list "></i> Liste des employés</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="redirectAdd"> <i class="fa fa-briefcase"></i> Ajouter un employé</a>
                    </li> 
                   
                    <li class="nav-item dropdown">
                        <a class="btn btn-secondary nav-link dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
                         <i class="fa fa-user"></i> 
                         	<c:if test="${not empty login }">
								<c:out value="${login}"/>
							</c:if>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                          <a class="dropdown-item" href="logOut"><i class="fa fa-sign-out"></i> Se déconnecter</a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
</nav>


<bR>
<bR>

</body>
</html>