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
	<div id="cuadro">
		<div class="container">
			<p id="titulo">Clientes</p>
			<hr>
			<div class="form-row">
				<div class="col">
					<label for="inputEmail4">Nombre:</label> <input type="text"
						class="form-control" id="txtNombre" name="nombre" placeholder="Nombre completo">
				</div>
				<div class="col">
					<label for="inputEmail4">Cédula:</label> <input type="text"
						class="form-control" id="txtCedula" name="Cedula" placeholder="Cedula">
				</div>
			</div>
			
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputEmail4">Correo electrónico:</label> <input
						type="email" class="form-control" id="txtEmail" name="email"
						placeholder="Email">
				</div>
				<div class="form-group col-md-6">
					<label for="inputPassword4">Número de teléfono:</label> <input
						class="form-control" id="txtTelefono" name="telefono"
						placeholder="No utilice separadores de miles">
				</div>
			</div>
			<div class="form-group">
				<label for="inputAddress">Dirección:</label> <input type="text"
					class="form-control" id="txtDireccion" name="direccion"
					placeholder="Cr 2 # 3 - 24">
			</div>
			<button class="btn btn-primary" onclick='enviarDatosCliente()'>Enviar</button>
		</div>
	</div>


	
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="js/myscript.js"></script>

</body>
</html>