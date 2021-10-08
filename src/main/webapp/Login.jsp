<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tienda virtual: Ingreso de usuarios</title>
<script>
	function enviarDatos() {
		if (validarDatos()) {

			var user = document.getElementById("txtUser").value.trim();
			var pass = document.getElementById("txtPass").value.trim();
			
			//SEÑORAS Y SEÑORES PARA ESTUDES EL FAMOSISIMO OBJETO HMLHTTPREQUEST
			var mensajero = new XMLHttpRequest();
			
			var url = '/TiendaVirtualApp/Login';
			var params = "user=" + user + "&" + "pass=" + pass;
			mensajero.open('POST', url, true);
			
			//Send the proper header information along with the request
			mensajero.setRequestHeader('Content-type',
					'application/x-www-form-urlencoded');
			mensajero.onreadystatechange = function() {//Call a function when the state changes.
				if (mensajero.readyState == 4 && mensajero.status == 200) {
					alert(mensajero.responseText);
				}
			}
			mensajero.send(params);
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
<link href="css/styles.css" rel="stylesheet" type="text/css" />


</head>
<body>
<!--  -> Inicio encabezado de botones <- -->
<br><br>
   <a href="/TiendaVirtualApp/RegistroProveedores.jsp">
   <img 
   src="img/clientes.png" onmouseover="this.src='img/clientes_hover.png'"
onmouseout="this.src='img/clientes.png'"></a>
&nbsp;
<a href="/TiendaVirtualApp/ConsultaProveedores.jsp">
   <img 
   src="img/proveedor.png" onmouseover="this.src='img/proveedor_hover.png'"
onmouseout="this.src='img/proveedor.png'"></a>
&nbsp;
<a href="/TiendaVirtualApp/RegistroProveedores.jsp">
   <img 
   src="img/productos.png" onmouseover="this.src='img/productos_hover.png'"
onmouseout="this.src='img/productos.png'"></a>
&nbsp;
<a href="/TiendaVirtualApp/Login.jsp">
   <img 
   src="img/login.png" onmouseover="this.src='img/login_hover.png'"
onmouseout="this.src='img/login.png'"></a>
<br><br>
<!--  -> Fin encabezado de botones <- -->

<h1>Login de usuarios</h1>
<br><br>
	<form action="/TiendaVirtualApp/Login" method="get">
		<table border='1'>
			<tr>
				<td>Usuario:</td>
				<td><input type="text" id="txtUser" name="user"></input></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" id="txtPass" name="pass"></input></td>
			</tr>
		</table>

	</form>
	<button onclick='enviarDatos()'>Login</button>
	<br>
	<a href="LoginCliente.jsp">Ir a pagina de registro</a>
</body>
</html>