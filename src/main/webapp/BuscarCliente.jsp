<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Buscar Cliente</title>

<script>
	function consultarCliente() {
		var cedula = document.getElementById("txtCedula").value.trim();
		if (cedula.trim() == "") {
			cedula = "null";
		}

		var http = new XMLHttpRequest();
		var url = "http://localhost:8080/consultarClientes?";
		var params = "cedula=" + cedula;
		http.open('POST', url, true);

		//Send the proper header information along with the request 
		http.setRequestHeader('Content-type',
				'application/x-www-form-urlencoded');
		http.onreadystatechange = function() {//Call a function when the state changes. 
			if (http.readyState == 4 && http.status == 200) {
				alert(http.responseText);
				CreateTableFromJSON(http.responseText);
			}
		}
		http.send(params);

	}

	function CreateTableFromJSON(json_result) {

		const json_arr = JSON.parse(json_result);

		// EXTRACT VALUE FOR HTML HEADER. 	
		var col = [];
		for (var i = 0; i < json_arr.length; i++) {
			for ( var key in json_arr[i]) {
				if (col.indexOf(key) === -1) {
					col.push(key);
				}
			}
		}

		// CREATE DYNAMIC TABLE.
		var table = document.createElement("table");
		table.setAttribute("border", "1");

		// CREATE HTML TABLE HEADER ROW USING THE EXTRACTED HEADERS ABOVE.

		var tr = table.insertRow(-1); // TABLE ROW.

		for (var i = 0; i < col.length; i++) {
			var th = document.createElement("th"); // TABLE HEADER.
			th.innerHTML = col[i];
			tr.appendChild(th);
		}

		// ADD JSON DATA TO THE TABLE AS ROWS.
		for (var i = 0; i < json_arr.length; i++) {

			tr = table.insertRow(-1);

			for (var j = 0; j < col.length; j++) {
				var tabCell = tr.insertCell(-1);
				tabCell.innerHTML = json_arr[i][col[j]];
			}
		}

		// FINALLY ADD THE NEWLY CREATED TABLE WITH JSON DATA TO A CONTAINER.
		var divContainer = document.getElementById("dvResult");
		divContainer.innerHTML = "";
		divContainer.appendChild(table);
	}
</script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="css/styles.css" rel="stylesheet" type="text/css" />
</head>
<body>

	<div id="cuadro">
		<div class="container">

			<p id="titulo">Buscar cliente</p>
			<hr>
			<div class="form-row">
				<div class="col">
					<label for="inputEmail4">Buscar por cédula:</label> <input
						type="text" class="form-control" id="txtCedula" name="cedula"
						placeholder="cedula">
				</div>
			</div>
			<br>
			<button type="submit" class="btn btn-primary"
				onclick='consultarCliente()'>Buscar</button>

			
		</div>
		
	</div>
	
	<br>
	
	<div id="dvResult"></div>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<!-- <script src="js/myscript.js"></script> -->

</body>
</html>