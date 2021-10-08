package com.tiendavirtual.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.tiendavirtual.dto.Cliente;

public class ClientesDAO {

	public void insertCostumer(Cliente cli) {
		Conexion con = new Conexion();
		Statement stmt;

		try {
			stmt = con.getConection().createStatement();
			stmt.executeUpdate("INSERT INTO clientes(cedula,nombre,telefono,direccion,correo) VALUES (" + "'"
					+ cli.getCedula() + "'" + "," + "'" + cli.getNombre() + "'" + "," + "'" + cli.getTelefono() + "'"
					+ "," + "'" + cli.getDireccion() + "'" + "," + "'" + cli.getCorreo() + "'" + ")");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public Cliente searchCustomer(String nombre) {

		return null;
	}

	public void updateCustomer(Cliente cli) {

	}

	public void deleteCustomer(Cliente cli) {

	}

	public ArrayList<Cliente> consultarClientes() {
		ArrayList<Cliente> lstClientes = new ArrayList<Cliente>();
		Conexion conex = new Conexion();
		try {
			PreparedStatement consulta = conex.getConection().prepareStatement("SELECT * FROM clientes ");

			ResultSet res = consulta.executeQuery();
			while (res.next()) {
					Cliente registro = new Cliente(res.getString("cedula"), res.getString("nombre"),
						res.getString("telefono"), res.getString("direccion"), res.getString("correo"));
				lstClientes.add(registro);
			}
			res.close();
			consulta.close();
			
		} catch (Exception e) {
			System.out.println("ERROR AL EJECUTAR CONSULTA");
		}
		return lstClientes;
	}
}
