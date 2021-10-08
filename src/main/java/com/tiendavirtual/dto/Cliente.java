package com.tiendavirtual.dto;

public class Cliente {
	private String cedula;
	private String nombre;
	private String telefono;
	private String direccion;
	private String correo;
	//?cedula=8888&nombre=Adan&telefono=3333&direccion=Cartagena&correo=gato@gmail
	
	public Cliente(String cedula, String nombre, String telefono, String direccion, String correo) {
		super();
		this.cedula = cedula;
		this.nombre = nombre;
		this.telefono = telefono;
		this.direccion = direccion;
		this.correo = correo;
	}


	public String getCedula() {
		return cedula;
	}


	public void setCedula(String cedula) {
		this.cedula = cedula;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getTelefono() {
		return telefono;
	}


	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}


	public String getDireccion() {
		return direccion;
	}


	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}


	public String getCorreo() {
		return correo;
	}


	public void setCorreo(String correo) {
		this.correo = correo;
	}
			
}
