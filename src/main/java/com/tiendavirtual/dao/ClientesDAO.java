package com.tiendavirtual.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.tiendavirtual.dto.Cliente;

public class ClientesDAO {

	public void insertCliente(Cliente cliente) {
		Conexion connection = new Conexion();
		Statement stmt;
		try {
			stmt = connection.getConnection().createStatement();
			stmt.executeUpdate("INSERT INTO clientes(cedula, nombre, direccion, telefono, email) "
					+ "VALUES (" + "'" + cliente.getCedula() + "'" + "," + "'" + cliente.getNombre() + "'" + "," + "'"
					+ cliente.getDireccion() + "'" + "," + "'" + cliente.getTelefono() + "'" + "," + "'"
					+ cliente.getEmail() + "'" + ")");
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public Cliente searchCliente(String parametro) {
		Conexion connection = new Conexion();
		Cliente result = null;
		Statement stmt;
		try {
			stmt = connection.getConnection().createStatement();
			String sql = "SELECT * FROM clientes WHERE cedula = '" + parametro + "' OR " + "nombre = '" + parametro
					+ "'";
			ResultSet rs = stmt.executeQuery(sql);
			if (rs.next()) {
				String cedula = rs.getString("cedula");
				String nombre = rs.getString("nombre");
				String direccion = rs.getString("direccion");
				String email = rs.getString("email");
				String telefono = rs.getString("telefono");
				result = new Cliente(cedula, nombre, direccion, telefono, email);
			}
			rs.close();
			stmt.close();
		} catch (Exception e) {
			System.out.print("Error al buscar el cliente.");
		}
		return result;
	}

	public ArrayList<Cliente> consultarClientes(String cedula) {
		ArrayList<Cliente> lstClientes = new ArrayList<Cliente>();
		Conexion connection = new Conexion();
		
		String sql = "SELECT * FROM clientes ";
		if (!cedula.trim().equals("null")) {
			sql = sql + "WHERE cedula = '" + cedula + "'";
		}
		
		try {
			Statement consulta = connection.getConnection().prepareStatement("SELECT * FROM clientes");
			ResultSet res = consulta.executeQuery(sql);
			while (res.next()) {
				Cliente registro = new Cliente(res.getString("cedula"), res.getString("nombre"),
						res.getString("direccion"), res.getString("telefono"), res.getString("email"));
				lstClientes.add(registro);
			}
			res.close();
			consulta.close();
		} catch (Exception e) {
			System.out.println("ERROR AL EJECUTAR CONSULTA");
		}
		return lstClientes;
	}

	public void updateCliente(String cedula, String nombre, String direccion, String telefono, String email) {
		Conexion connection = new Conexion();
		Statement stmt;
		try {
			stmt = connection.getConnection().createStatement();
			String sql = "UPDATE clientes SET nombre = " + "'" + nombre + "', " + "direccion = " + "'" + direccion
					+ "', " + "telefono = " + "'" + telefono + "' " + "email = " + "'" + email + "' "
					+ "WHERE cedula = '" + cedula + "'";
			stmt.executeUpdate(sql);
			stmt.close();
		} catch (Exception e) {
			System.out.print("Error al actulizar Estudiante.");
		}

	}

	public void deleteCliente() {

	}

}
