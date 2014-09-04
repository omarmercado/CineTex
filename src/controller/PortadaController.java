package controller;

import hibernate.Articulo;
import hibernate.Pagina;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dao.PaginaDAO;
import dao.PortadaDAO;


@Controller
public class PortadaController {

	@Autowired
	PortadaDAO portadaDAO;
	@Autowired
	PaginaDAO paginaDAO;
		
	@RequestMapping("/Portada.htm")
	public ModelAndView getPortada(HttpServletRequest request){

		List<Articulo> ListaResenas = new ArrayList<Articulo>();
		ListaResenas = portadaDAO.getUltimasResenas();
		Pagina pagina = paginaDAO.getPagina();

		ModelAndView mv = new ModelAndView();
		mv.addObject("Pagina",pagina);

		
		  if(request.getHeader("User-Agent").indexOf("Mobile") != -1 || request.getHeader("User-Agent").indexOf("Android") != -1) {
			    mv.setViewName("mobile/Portada");
			  } else {
				    mv.setViewName("/Portada");
			  }
		  
		  mv.addObject("ListaResenas",ListaResenas);
		return mv ;

	}
	
	
	
	
	
}
