<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tienda Virtual:Ingreso de Clientes</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" />


</head>
<script>
	function enviarDatos() {
		if (validarDatos()) {
						
			var ced = document.getElementById("txtCed").value.trim();
			var nom = document.getElementById("txtNom").value.trim();
			var tel = document.getElementById("txtTel").value.trim();
			var dir = document.getElementById("txtDir").value.trim();
			var corr = document.getElementById("txtCorr").value.trim();
			
			var mensajero = new XMLHttpRequest();
			
			var url = "/TiendaVirtualApp/ingresarcliente";
			var params = "cedula=" + ced + "&" + "nombre=" + nom +"&" + "telefono=" + tel+"&" + "direccion=" + dir+"&" + "correo=" + corr;
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
			alert("Algo va mal");
		}

		return;
	}

	function validarDatos() {
		if (document.getElementById("txtCed").value.length == 0) {
			alert("El campo cedula no puede ser vacio");
			return false;
		} else if (document.getElementById("txtNom").value.length == 0) {
			alert("El campo Nombre no puede ser vacio");
			return false;
		} 
		else if (document.getElementById("txtTel").value.length == 0) {
			alert("El campo Telefono no puede ser vacio");
			return false;
		}
		else if (document.getElementById("txtDir").value.length == 0) {
			alert("El campo Dirección no puede ser vacio");
			return false;
		}
		else if (document.getElementById("txtCorr").value.length == 0) {
			alert("El campo Correo no puede ser vacio");
			return false;
		}
		else {
			return true;
		}
	}
</script>
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
		<table border='1'>
			<tr>
				<td>Cédula:</td>
				<td><input type="text" id="txtCed" name="ced"></input></td>
			</tr>
			<tr>
				<td>Nombre:</td>
				<td><input type="text" id="txtNom" name="nom"></input></td>
			</tr>
			<tr>
				<td>Teléfono:</td>
				<td><input type="text" id="txtTel" name="tel"></input></td>
			</tr>
			<tr>
				<td>Dirección:</td>
				<td><input type="text" id="txtDir" name="dir"></input></td>
			</tr>
			<tr>
				<td>Correo:</td>
				<td><input type="text" id="txtCorr" name="corr"></input></td>
			</tr>
		</table>
		<br /> 
		<button onclick="enviarDatos()">Registrar nuevo cliente</button>
</body>
</html>