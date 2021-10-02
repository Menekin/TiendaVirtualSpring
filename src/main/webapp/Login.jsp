<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Iniciar sesión</title>

<script>	
	function enviarDatos() {
		
		if (validarDatos()) {
			var user = document.getElementById("txtUser").value.trim();
			var pass = document.getElementById("txtPass").value.trim();
		

			// SEÑORAS Y SEÑORES PARA USTEDES EL FAMOSO OBJETO XMLHttpRequest 
			var http = new XMLHttpRequest();

			var url = "http://localhost:8080/ingresarUser?";
			var params = "nombre=" + user + "&" + "password=" + pass;
			http.open('POST', url, true);
			//Send the proper header information along with the request 
			http.setRequestHeader('Content-type',
					'application/x-www-form-urlencoded');
			http.onreadystatechange = function() {//Call a function when the state changes. 
				if (http.readyState == 4 && http.status == 200) {
					alert(http.responseText);
				}
			}
			http.send(params);
		} else {
			alert("Algo va mal")
		}

		return;
	}
	function validarDatos() {
		if (document.getElementById("txtUser").value.length == 0) {
			alert("El Nombre No Puede ser Vacio");
			return false;
		}

		else if (document.getElementById("txtPass").value.length == 0) {
			alert("El Pass No Puede ser Vacio");
			return false;
		} else {
			return true;
		}

	}
</script>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/sign-in/">
<!-- Bootstrap core CSS -->
<link href="assets/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>


<!-- Custom styles for this template -->
<link href="css/signin.css" rel="stylesheet">


</head>

<body class="text-center">
	<main class="form-signin">
			<img class="mb-4" src="assets/brand/bootstrap-logo.svg" alt=""
				width="72" height="57">
			<h1 class="h3 mb-3 fw-normal">Iniciar sesión</h1>

			<div class="form-floating">
				<input type="email" class="form-control" id="txtUser" name="user"
					placeholder="name@example.com"> <label for="floatingInput">
					Correo de usuario </label>
			</div>
			<div class="form-floating">
				<input type="password" class="form-control" id="txtPass" name="pass"
					placeholder="Password"> <label for="floatingPassword">Password</label>
			</div>

			<div class="checkbox mb-3">
				<label> <input type="checkbox" value="remember-me">
					Recordar
				</label>
			</div>
			<button class="w-100 btn btn-lg btn-primary" onclick='enviarDatos()'>Login</button>
			<p class="mt-5 mb-3 text-muted">&copy; Oscar Villarraga</p>

		<br> <a href="IngresarCliente.jsp">Clientes</a>
		
		
	</main>
</body>

</html>