<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Clientes</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
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


		<div id="cuadro">
			<div class="container">
				<p id="titulo">Clientes</p>
				<hr>
				<div class="form-row">
					<div class="col">
						<label for="inputEmail4">Nombre:</label> <input type="text"
							class="form-control" id="txtNombre" name="nombre"
							placeholder="Nombre completo">
					</div>
					<div class="col">
						<label for="inputEmail4">C?dula:</label> <input type="text"
							class="form-control" id="txtCedula" name="Cedula"
							placeholder="Cedula">
					</div>
				</div>

				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputEmail4">Correo electr?nico:</label> <input
							type="email" class="form-control" id="txtEmail" name="email"
							placeholder="Email">
					</div>
					<div class="form-group col-md-6">
						<label for="inputPassword4">N?mero de tel?fono:</label> <input
							class="form-control" id="txtTelefono" name="telefono"
							placeholder="No utilice separadores de miles">
					</div>
				</div>
				<div class="form-group">
					<label for="inputAddress">Direcci?n:</label> <input type="text"
						class="form-control" id="txtDireccion" name="direccion"
						placeholder="Cr 2 # 3 - 24">
				</div>
				<button class="btn btn-primary" onclick='enviarDatosCliente()'>Enviar</button>
			</div>
		</div>



		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
		<script src="js/myscript.js"></script>
	</div>
</body>
</html>