package com.tiendavirtual.dao;

import java.sql.SQLException;
import java.sql.Statement;

import com.tiendavirtual.dto.Usuario;

public class UsuariosDAO { 

	public void insertUser(Usuario user) {
		Conexion  connection = new Conexion();
		Statement stmt;
		try {
			stmt = connection.getConnection().createStatement();
			stmt.executeUpdate("INSERT INTO usuarios(usuario, password) "
					+ "VALUES (" + "'" + user.getNombre() + "'" + "," + "'"
					+ user.getPassword() + "'" + ")");
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public Usuario searchUser(String parametro) {
		
		return null;
	}

	public void updateUser(Usuario user) {
		
	}

	public void deleteUser() {

	}
}
