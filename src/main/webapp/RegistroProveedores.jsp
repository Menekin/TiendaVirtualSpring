<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro de Proveedores</title>
<script>
	function validateFields() {
		if (document.getElementById("txtNIT").value.trim().length == 0) {
			alert("El NIT no puede ser vacio.");
			return false;
		} else if (document.getElementById("txtNombre").value.trim().length == 0) {
			alert("El nombre no puede ser vacio.");
			return false;
		} else if (document.getElementById("txtDireccion").value.trim().length == 0) {
			alert("La dirección no puede ser vacia.");
			return false;
		} else if (document.getElementById("txtTelefono").value.trim().length == 0) {
			alert("El telefono no puede ser vacio.");
			return false;
		} else {
			return true;
		}
	}

	function sendData() {
		if (!validateFields()) {
			return;
		} else {
			var nit = document.getElementById("txtNIT").value.trim();
			var nombre = document.getElementById("txtNombre").value.trim();
			var direccion = document.getElementById("txtDireccion").value
					.trim();
			var telefono = document.getElementById("txtTelefono").value.trim();
			var email = document.getElementById("txtEmail").value.trim();
			var sitioweb = document.getElementById("txtSitioWeb").value.trim();

			var http = new XMLHttpRequest();
			var url = '/TiendaVirtualApp/registrarProveedor';
			var params = "NIT=" + nit + "&" + "nombre=" + nombre + "&"
					+ "direccion=" + direccion + "&" + "telefono=" + telefono
					+ "&" + "email=" + email + "&" + "sitioweb=" + sitioweb;
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

	<h1>Registro de Provedores</h1>
	<table>
		<tr>
			<td><label for="txtNIT">NIT:</label></td>
			<td><input type="text" id="txtNIT" name="NIT"></td>
		</tr>
		<tr>
			<td><label for="txtNombre">Nombre</label></td>
			<td><input type="text" id="txtNombre" name="nombre"></td>
		</tr>
		<tr>
			<td><label for="txtDireccion">Dirección:</label></td>
			<td><input type="text" id="txtDireccion" name="direccion"></td>
		</tr>
		<tr>
			<td><label for="txtTelefono">Telefono</label></td>
			<td><input type="text" id="txtTelefono" name="telefono"></td>
		</tr>
		<tr>
			<td><label for="txtEmail">Correo Electrónico:</label></td>
			<td><input type="email" id="txtEmail" name="email"></td>
		</tr>
		<tr>
			<td><label for="txtSitioWeb">Sitio Web:</label></td>
			<td><input type="text" id="txtSitioWeb" name="sitioweb"></td>
		</tr>
		<tr>
			<td><button onclick="sendData()">Enviar Datos</button></td>
			<td><button onclick="clearForm()">Cancelar</button></td>
		</tr>
	</table>

</body>
</html>