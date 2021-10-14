package com.tiendavirtual.spring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class TiendaVirtualSpringApplication extends SpringBootServletInitializer{

	public static void main(String[] args) {

		System.setProperty("server.servlet.context-path", "/TiendaGrupo11RinconHondo");
		SpringApplication.run(TiendaVirtualSpringApplication.class, args);
	}

}
