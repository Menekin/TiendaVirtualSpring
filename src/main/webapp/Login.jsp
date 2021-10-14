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

			var url = '/TiendaGrupo11RinconHondo/Login';
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


	<div id="menu">

		<!-- Este es todo el menú -->
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
	<!-- Aqui acaba el menú -->

	<div id="contenido">

		<h1>Login de usuarios</h1>
		<br>
		<br>
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
		<br> <a href="LoginCliente.jsp">Ir a pagina de registro</a>
	</div>
</body>
</html>