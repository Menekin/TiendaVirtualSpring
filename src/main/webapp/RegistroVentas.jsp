<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro de venta</title>
<script>
	function validateFields() {
		if (document.getElementById("txtCodigo").value.trim().length == 0) {
			alert("El Código no puede ser vacio.");
			return false;
		} else if (document.getElementById("txtCantidad").value.trim().length == 0) {
			alert("La cantidad de venta no puede ser vacía.");
			return false;
		} else if (document.getElementById("txtNIT_cliente").value.trim().length == 0) {
			alert("El NIT del cliente no puede ser vacio.");
			return false;
		} else {
			return true;
		}
	}

	function sendData() {
		if (!validateFields()) {
			return;
		} else {
			var Codigo_producto = document.getElementById("txtCodigo").value
					.trim();
			var Cantidad = document.getElementById("txtCantidad").value.trim();
			var NIT_cliente = document.getElementById("txtNIT_cliente").value
					.trim();

			var http = new XMLHttpRequest();
			var url = '/TiendaGrupo11RinconHondo/registrarVenta';
			var params = "codigo_producto=" + Codigo_producto + "&"
					+ "cantidad=" + Cantidad + "&" + "NIT_cliente="
					+ NIT_cliente;
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
			value="Mostrar" />  &nbsp; <input type="image" src="img/ventas.png"
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
			</a> &nbsp; <a
				href="/TiendaGrupo11RinconHondo/CargueMasivoProducto.jsp"> <img
				src="img/cargue.png"
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
		<h1>Registro de Ventas</h1>
		<br><br>
		<table>
			<tr>
				<td><label for="txtCodigo">Código:</label></td>
				<td><input type="text" id="txtCodigo" name="Codigo_producto"></td>
			</tr>
			<tr>
				<td><label for="txtNombre">Cantidad:</label></td>
				<td><input type="text" id="txtCantidad" name="Cantidad"></td>
			</tr>
			<tr>
				<td><label for="txtNitCliente">Nit Cliente:</label></td>
				<td><input type="text" id="txtNIT_cliente" name="NIT_cliente"></td>
			</tr>
			<tr>
				<td><button onclick="sendData()">Enviar Datos</button></td>

			</tr>
		</table>
	</div>
</body>
</html>