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
		} 
		else if (document.getElementById("txtIvaCompra").value.trim().length == 0) {
			alert("El Iva Compra no puede ser vacio.");
			return false;
		}
		else if (document.getElementById("txtPrecioVenta").value.trim().length == 0) {
			alert("El Precio Venta no puede ser vacio.");
			return false;
		}else {
			return true;
		}
	}

	function sendData() {
		if (!validateFields()) {
			return;
		} else {
			var codigo = document.getElementById("txtCodigo").value.trim();
			var nombre = document.getElementById("txtNombre").value.trim();
			var nitproveedor= document.getElementById("txtNitProveedor").value
					.trim();
			var preciocompra = document.getElementById("txtPrecioCompra").value.trim();
			var ivacompra = document.getElementById("txtIvaCompra").value.trim();
			var precioventa = document.getElementById("txtPrecioVenta").value.trim();

			var http = new XMLHttpRequest();
			var url = '/TiendaVirtualApp/registrarProducto';
			var params = "codigo=" + codigo + "&" + "nombre=" + nombre + "&"
					+ "nitproveedor=" + nitproveedor + "&" + "preciocompra=" + preciocompra
					+ "&" + "ivacompra=" + ivacompra + "&" + "precioventa=" + precioventa;
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

</body>
</html>