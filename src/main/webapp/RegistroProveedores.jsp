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
			alert("La direcci?n no puede ser vacia.");
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
			var url = '/TiendaGrupo11RinconHondo/registrarProveedor';
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



	<div id="menu">

		<!-- Este es todo el men? -->
		<br> <br> <input type="image" src="img/clientes.png"
			onmouseover="this.src='img/clientes_hover.png'"
			onmouseout="this.src='img/clientes.png'"
			onclick="if(document.getElementById('spoiler1') .style.display=='none') 
{document.getElementById('spoiler1') .style.display=''; this.value = 'Ocultar';
document.getElementById('spoiler2') .style.display='none'
document.getElementById('spoiler3') .style.display='none'
document.getElementById('spoiler4') .style.display='none';}
else{document.getElementById('spoiler1') .style.display='none';this.value = 'Mostrar';}"
			value="Mostrar" /> &nbsp; <input type="image"
			src="img/productos.png"
			onmouseover="this.src='img/productos_hover.png'"
			onmouseout="this.src='img/productos.png'"
			onclick="if(document.getElementById('spoiler2') .style.display=='none') 
{document.getElementById('spoiler2') .style.display=''; this.value = 'Ocultar';
document.getElementById('spoiler1') .style.display='none'
document.getElementById('spoiler3') .style.display='none'
document.getElementById('spoiler4') .style.display='none';}
else{document.getElementById('spoiler2') .style.display='none';this.value = 'Mostrar'; }"
			value="Mostrar" /> &nbsp; <input type="image"
			src="img/proveedor.png"
			onmouseover="this.src='img/proveedor_hover.png'"
			onmouseout="this.src='img/proveedor.png'"
			onclick="if(document.getElementById('spoiler3') .style.display=='none') 
{document.getElementById('spoiler3') .style.display=''; this.value = 'Ocultar';
document.getElementById('spoiler1') .style.display='none'
document.getElementById('spoiler2') .style.display='none'
document.getElementById('spoiler4') .style.display='none';}
else{document.getElementById('spoiler3') .style.display='none';this.value = 'Mostrar'; }"
			value="Mostrar" /> &nbsp; <input type="image" src="img/ventas.png"
			onmouseover="this.src='img/ventas_hover.png'"
			onmouseout="this.src='img/ventas.png'"
			onclick="if(document.getElementById('spoiler4') .style.display=='none') 
{document.getElementById('spoiler4') .style.display=''; this.value = 'Ocultar';
document.getElementById('spoiler1') .style.display='none'
document.getElementById('spoiler2') .style.display='none'
document.getElementById('spoiler3') .style.display='none';}
else{document.getElementById('spoiler4') .style.display='none';this.value = 'Mostrar'; }"
			value="Mostrar" />


		<div id="spoiler1" style="display: none">
			<a href="/TiendaGrupo11RinconHondo/RegistroCliente.jsp"> <img
				src="img/registro.png"
				onmouseover="this.src='img/registro_hover.png'"
				onmouseout="this.src='img/registro.png'"></a> &nbsp; <a
				href="/TiendaGrupo11RinconHondo/ConsultaClientes.jsp"> <img
				src="img/consulta.png"
				onmouseover="this.src='img/consulta_hover.png'"
				onmouseout="this.src='img/consulta.png'"></a>
		</div>

		<div id="spoiler2" style="display: none">
			&nbsp;&nbsp; <a
				href="/TiendaGrupo11RinconHondo/RegistroProductos.jsp"> <img
				src="img/registro.png"
				onmouseover="this.src='img/registro_hover.png'"
				onmouseout="this.src='img/registro.png'">
			</a> &nbsp; <a href="/TiendaGrupo11RinconHondo/CargueMasivoProducto.jsp">
				<img src="img/cargue.png"
				onmouseover="this.src='img/cargue_hover.png'"
				onmouseout="this.src='img/cargue.png'">
			</a> &nbsp; <a href="/TiendaGrupo11RinconHondo/ConsultaProductos.jsp">
				<img src="img/consulta.png"
				onmouseover="this.src='img/consulta_hover.png'"
				onmouseout="this.src='img/consulta.png'">
			</a>
		</div>

		<div id="spoiler3" style="display: none">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
				href="/TiendaGrupo11RinconHondo/RegistroProveedores.jsp"> <img
				src="img/registro.png"
				onmouseover="this.src='img/registro_hover.png'"
				onmouseout="this.src='img/registro.png'"></a> &nbsp; <a
				href="/TiendaGrupo11RinconHondo/ConsultaProveedores.jsp"> <img
				src="img/consulta.png"
				onmouseover="this.src='img/consulta_hover.png'"
				onmouseout="this.src='img/consulta.png'"></a>
		</div>

		<div id="spoiler4" style="display: none">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
				href="/TiendaGrupo11RinconHondo/RegistroVentas.jsp"> <img
				src="img/registro.png"
				onmouseover="this.src='img/registro_hover.png'"
				onmouseout="this.src='img/registro.png'"></a> &nbsp; <a
				href="/TiendaGrupo11RinconHondo/ReporteVentas.jsp"> <img
				src="img/consulta.png"
				onmouseover="this.src='img/consulta_hover.png'"
				onmouseout="this.src='img/consulta.png'"></a>

		</div>
	</div>
	<br>
	<br>
	<!-- Aqui acaba el men? -->

	<div id="contenido">


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
				<td><label for="txtDireccion">Direcci?n:</label></td>
				<td><input type="text" id="txtDireccion" name="direccion"></td>
			</tr>
			<tr>
				<td><label for="txtTelefono">Telefono</label></td>
				<td><input type="text" id="txtTelefono" name="telefono"></td>
			</tr>
			<tr>
				<td><label for="txtEmail">Correo Electr?nico:</label></td>
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
	</div>
</body>
</html>