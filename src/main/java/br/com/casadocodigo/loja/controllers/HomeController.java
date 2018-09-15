package br.com.casadocodigo.loja.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Danilo Silva
 */
@Controller
public class HomeController {

	@RequestMapping("/")
	public String index() {
		System.out.println("Entrando na home da Casa do Código");
		return "home";
	}
}
