package com.uelbosque.virtualstore.TiendaVirtualSpring;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tiendavirtual.dao.ClientesDAO;
import com.tiendavirtual.dao.ProveedorDAO;
import com.tiendavirtual.dao.UsuariosDAO;
import com.tiendavirtual.dto.Cliente;
import com.tiendavirtual.dto.Proveedor;
import com.tiendavirtual.dto.Usuario;

@RestController
public class TiendaVirtualRESTControlller {

	// User
	@RequestMapping("/ingresarUser")
	public String insertarUser(Usuario user) {
		UsuariosDAO dao = new UsuariosDAO();
		dao.insertUser(user);
		return "Usuario insertado";
	}

	// Cilete
	@RequestMapping("/ingresarCliente")
	public String insertarClientes(Cliente cliente) {
		ClientesDAO dao = new ClientesDAO();
		dao.insertCliente(cliente);
		return "cliente insertado";
	}

	@RequestMapping("/consultarClientes")
	public ArrayList<Cliente> consultarClientes(String cedula) {
		ClientesDAO dao = new ClientesDAO();
		return dao.consultarClientes(cedula);
	}
	/*
	@RequestMapping("/consultarClientes")
	public Cliente consultarCliente(String cedula) {
		ClientesDAO dao = new ClientesDAO();
		return dao.searchCliente(cedula);
	}*/

	// Proveedores
	@RequestMapping("/registrarProveedor")
	public String registrarProveedor(Proveedor p) {
		ProveedorDAO dao = new ProveedorDAO();
		dao.insertProveedor(p);
		return "Proveedor Registrado";
	}

	@RequestMapping("/consultarProveedores")
	public ArrayList<Proveedor> consultarProveedores(String nit) {
		ProveedorDAO dao = new ProveedorDAO();
		return dao.consultarProveedores(nit);
	}
}
