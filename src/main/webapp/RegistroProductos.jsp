<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro de Productos</title>
<script>
	function validateFields() {
		if (document.getElementById("txtCodigo").value.trim().length == 0) {
			alert("El Codigo no puede ser vacio.");
			return false;
		} else if (document.getElementById("txtNombre").value.trim().length == 0) {
			alert("El Nombre no puede ser vacio.");
			return false;
		} else if (document.getElementById("txtNitProveedor").value.trim().length == 0) {
			alert("El Nit del Proveedor no puede ser vacio.");
			return false;
		} else if (document.getElementById("txtPrecioCompra").value.trim().length == 0) {
			alert("El Precio Compra no puede ser vacio.");
			return false;
		} else if (document.getElementById("txtIvaCompra").value.trim().length == 0) {
			alert("El Iva Compra no puede ser vacio.");
			return false;
		} else if (document.getElementById("txtPrecioVenta").value.trim().length == 0) {
			alert("El Precio Venta no puede ser vacio.");
			return false;
		} else {
			return true;
		}
	}

	function sendData() {
		if (!validateFields()) {
			return;
		} else {
			var codigo = document.getElementById("txtCodigo").value.trim();
			var nombre = document.getElementById("txtNombre").value.trim();
			var nitproveedor = document.getElementById("txtNitProveedor").value
					.trim();
			var preciocompra = document.getElementById("txtPrecioCompra").value
					.trim();
			var ivacompra = document.getElementById("txtIvaCompra").value
					.trim();
			var precioventa = document.getElementById("txtPrecioVenta").value
					.trim();

			var http = new XMLHttpRequest();
			var url = '/TiendaGrupo11RinconHondo/registrarProducto';
			var params = "codigo=" + codigo + "&" + "nombre=" + nombre + "&"
					+ "nitproveedor=" + nitproveedor + "&" + "preciocompra="
					+ preciocompra + "&" + "ivacompra=" + ivacompra + "&"
					+ "precioventa=" + precioventa;
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

		<h1>Registro de Productos</h1>
		<table>
			<tr>
				<td><label for="txtCodigo">Código:</label></td>
				<td><input type="text" id="txtCodigo" name="codigo"></td>
			</tr>
			<tr>
				<td><label for="txtNombre">Nombre:</label></td>
				<td><input type="text" id="txtNombre" name="nombre"></td>
			</tr>
			<tr>
				<td><label for="txtNitProveedor">Nit Proveedor:</label></td>
				<td><input type="text" id="txtNitProveedor" name="nitproveedor"></td>
			</tr>
			<tr>
				<td><label for="txtPrecioCompra">Precio Compra</label></td>
				<td><input type="text" id="txtPrecioCompra" name="preciocompra"></td>
			</tr>
			<tr>
				<td><label for="txtIvaCompra">Iva Compra:</label></td>
				<td><input type="text" id="txtIvaCompra" name="ivacompra"></td>
			</tr>
			<tr>
				<td><label for="txtPrecioVenta">Precio Venta</label></td>
				<td><input type="text" id="txtPrecioVenta" name="precioventa"></td>
			</tr>
			<tr>
				<td><button onclick="sendData()">Enviar Datos</button></td>
				<td><button onclick="clearForm()">Cancelar</button></td>
			</tr>
		</table>
	</div>
</body>
</html>