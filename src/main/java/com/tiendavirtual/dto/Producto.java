package com.tiendavirtual.dto;

public class Producto {

	private String codigo;
	private String nombre;
	private String nitproveedor;
	private float preciocompra;
	private float ivacompra;
	private float precioventa;
	
	public Producto(String codigo, String nombre, String nitproveedor, float preciocompra, float ivacompra,
			float precioventa) {
		super();
		this.codigo = codigo;
		this.nombre = nombre;
		this.nitproveedor = nitproveedor;
		this.preciocompra = preciocompra;
		this.ivacompra = ivacompra;
		this.precioventa = precioventa;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getNitproveedor() {
		return nitproveedor;
	}

	public void setNitproveedor(String nitproveedor) {
		this.nitproveedor = nitproveedor;
	}

	public float getPreciocompra() {
		return preciocompra;
	}

	public void setPreciocompra(float preciocompra) {
		this.preciocompra = preciocompra;
	}

	public float getIvacompra() {
		return ivacompra;
	}

	public void setIvacompra(float ivacompra) {
		this.ivacompra = ivacompra;
	}

	public float getPrecioventa() {
		return precioventa;
	}

	public void setPrecioventa(float precioventa) {
		this.precioventa = precioventa;
	}
	
	
	
}
