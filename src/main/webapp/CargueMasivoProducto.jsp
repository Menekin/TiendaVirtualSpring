<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Carga de Productos</title>
<script>
	
async function CargarArchivo() {
		let formData = new FormData();
		formData.append("file", fileupload.files[0]);
		let response = await
		fetch('/TiendaVirtualApp/upload', {
			method : "POST",
			body : formData
		});
		if (response.status == 200) {
			alert("File successfully uploaded.");
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

	<h1>Cargue Masivo de Producto</h1>
	<input id="fileupload" type="file" name="fileupload" />
	<button id="btnUpload" onclick="CargarArchivo()">Subir Archivo
	</button>
</body>
</html>