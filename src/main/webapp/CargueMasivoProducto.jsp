<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Carga de Productos</title>
<script>
	async
	function CargarArchivo() {
		let formData = new FormData();
		formData.append("file", fileupload.files[0]);
		let response = await
		fetch('/TiendaGrupo11RinconHondo/upload', {
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


		<h1>Cargue Masivo de Producto</h1>
		<input id="fileupload" type="file" name="fileupload" />
		<button id="btnUpload" onclick="CargarArchivo()">Subir
			Archivo</button>
	</div>
</body>
</html>