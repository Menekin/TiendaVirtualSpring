package com.tiendavirtual.spring;

import java.io.File;
import java.util.ArrayList;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.tiendavirtual.dao.ClientesDAO;
import com.tiendavirtual.dao.ProductoDAO;
import com.tiendavirtual.dao.ProveedorDAO;
import com.tiendavirtual.dto.Cliente;
import com.tiendavirtual.dto.Producto;
import com.tiendavirtual.dto.Proveedor;

@RestController
public class TiendaVirtualRESTControlller {
	
	@RequestMapping("/consultarClientes")
    public  ArrayList<Cliente>  consultarClientes() {
		ClientesDAO dao= new ClientesDAO ();
        return dao.consultarClientes();
    }
    
    @RequestMapping("/ingresarcliente")
    public String insertarCliente(Cliente C) {
    	
    	ClientesDAO dao= new ClientesDAO ();
    	dao.insertCostumer(C);
  		 return "Cliente Insertado";
    }
    
      
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

	
	@RequestMapping("/registrarProducto")
	public String registrarProducto(Producto p) {		
		ProductoDAO dao = new ProductoDAO();
		dao.insertProducto(p);
		return "Producto Registrado";		
	}
	
	@RequestMapping("/consultarProducto")
	public ArrayList<Producto> consultarProducto(String cod) {		
		ProductoDAO dao = new ProductoDAO();
		return dao.consultarProductos(cod);		
	}

	//Microservicio para recibir un archivo
	
	@PostMapping("/upload") 
    public ResponseEntity<?> handleFileUpload( @RequestParam("file") MultipartFile file ) {
      String fileName = file.getOriginalFilename();
      try {
           File fl=new File("C:\\ArchivosRecibidos\\" + fileName);
        file.transferTo(fl);
        ProductoDAO dao=new ProductoDAO();
       
        dao.FileUpload(fl);
      } catch (Exception e) {
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
      } 
      return ResponseEntity.ok("File uploaded successfully.");
    }
	
	
}
