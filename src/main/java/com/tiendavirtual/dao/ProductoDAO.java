package com.tiendavirtual.dao;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.swing.JOptionPane;

import com.tiendavirtual.dto.Producto;

public class ProductoDAO {

	public void insertProducto(Producto produ) {
		Conexion conex = new Conexion();
		try {
			Statement estatuto = conex.getConection().createStatement();
			estatuto.executeUpdate("INSERT INTO productos(codigo, nombre, nitproveedor, preciocompra, ivacompra, precioventa) VALUES ('"
							+ produ.getCodigo() + "', '" + produ.getNombre() + "', '" + produ.getNitproveedor() + "', "
							+ produ.getPreciocompra() + ", " + produ.getIvacompra() + ", " + produ.getPrecioventa()
							+ ")");
			estatuto.close();

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}

	public ArrayList<Producto> consultarProductos(String codigo) {

		ArrayList<Producto> productos = new ArrayList<Producto>();
		Conexion conex = new Conexion();

		String sql = "SELECT * FROM productos ";
		
		if (!codigo.trim().equals("null")) {
			sql = sql + "WHERE codigo = '" + codigo + "'";
		}

		try {
			Statement consulta = conex.getConection().createStatement();
			ResultSet res = consulta.executeQuery(sql);

			while (res.next()) {
				Producto produ = new Producto(res.getString("codigo"), res.getString("nombre"),
						res.getString("nitproveedor"), res.getFloat("preciocompra"), res.getFloat("ivacompra"),
						res.getFloat("precioventa"));
				productos.add(produ);
			}
			res.close();
			consulta.close();

		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, "no se pudo consultar el Producto\n" + e);
		}
		return productos;
	}

	public void FileUpload(File Archivo) {
		try {
			FileReader fr= new FileReader (Archivo);
			BufferedReader br= new BufferedReader(fr);
			String linea="";
			while((linea=br.readLine())!=null){
				String []tokens=linea.split(";");
				Producto p=new Producto(tokens[0],tokens[1],tokens[2], Float.parseFloat(tokens[3]),Float.parseFloat(tokens[4]),Float.parseFloat(tokens[5]));
			    insertProducto(p);
			}
			br.close();
			fr.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
