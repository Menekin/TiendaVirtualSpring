package com.tiendavirtual.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Conexion {

	/*
	 * private String bd = "tienda_virtual";
	 * private String login = "root";
	 * private String password = "admin";
	 * private String url = "jdbc:mysql://localhost/" + bd;
	*/
	
	private String bd = "Grupo11RinconHondo";
	private String login = "admin";
	private String password = "MisionTIC2022GRUPO11";
	private String url = "jdbc:mysql://misiontic2022grupo11.czo3ixoe3xoe.us-east-1.rds.amazonaws.com/"+ bd;

	public Connection getConection () {

		Connection con = null;
		
		try {
			//Class.forName("com.mysql.cj.jdbc.Driver");    //esta linea se comentarea cuando se conecta a la BD en AWS
			con = DriverManager.getConnection(url, login, password);
			if (con != null) {
				System.out.println("Conexión a base de datos " + bd + " OK\n");
				}
		} catch (SQLException e) {
			System.out.println(e);
		} /*catch (ClassNotFoundException e) { //esta linea se comentarea cuando se conecta a la BD en AWS
		System.out.println(e);  //esta linea se comentarea cuando se conecta a la BD en AWS
		}*/
		
		catch (Exception e) {
			System.out.println(e);
		}
		
		return con;
	}

}
