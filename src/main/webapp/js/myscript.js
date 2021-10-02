/**
 * 
 */


function enviarDatosCliente() {

	if (validarDatosCliente()) {
		var nombre = document.getElementById("txtNombre").value.trim();
		var cedula = document.getElementById("txtCedula").value.trim();
		var direccion = document.getElementById("txtDireccion").value.trim();
		var telefono = document.getElementById("txtTelefono").value.trim();
		var email = document.getElementById("txtEmail").value.trim();

		// SEÑORAS Y SEÑORES PARA USTEDES EL FAMOSO OBJETO XMLHttpRequest 
		var http = new XMLHttpRequest();

		var url = "http://localhost:8080/ingresarCliente?";
		var params = "cedula=" + cedula + "&" + "nombre=" + nombre + "&" + "telefono=" + telefono + "&" + "direccion=" + direccion + "&" + "email=" + email;
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
	} else {
		alert("Algo va mal")
	}
	return;
}
function validarDatosCliente() {
	if (document.getElementById("txtNombre").value.length == 0) {
		alert("El Nombre No puede ser Vacio");
		return false;
	}
	else if (document.getElementById("txtCedula").value.length == 0) {
		alert("La Cédula No puede ser Vacio");
		return false;
	}
	else if (document.getElementById("txtEmail").value.length == 0) {
		alert("La Dirección No puede ser Vacio");
		return false;
	}
	else if (document.getElementById("txtTelefono").value.length == 0) {
		alert("El Teléfono No puede ser Vacio");
		return false;
	} 
	else if (document.getElementById("txtDireccion").value.length == 0) {
		alert("La Dirección No puede ser Vacio");
		return false;
	}else {
		return true;
	}

}