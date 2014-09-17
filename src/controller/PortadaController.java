package controller;

import hibernate.Articulo;
import hibernate.Pagina;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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
		
	@RequestMapping(value={"/","/Portada.htm"})
	public ModelAndView getPortada(HttpServletRequest request){

		List<Articulo> ListaResenas = new ArrayList<Articulo>();
		ListaResenas = portadaDAO.getUltimasResenas();
		Pagina pagina = paginaDAO.getPagina();

		ModelAndView mv = new ModelAndView();
		mv.addObject("Pagina",pagina);

		Map<String, String> VersionInfo = paginaDAO.getVersion(request, "Portada"); 

		mv.setViewName(VersionInfo.get("View"));
		
	    String tipo = VersionInfo.get("Tipo").trim();

		  
		  
			paginaDAO.pageView("Portada", "",tipo);

		  mv.addObject("ListaResenas",ListaResenas);
		return mv ;

	}
	
	
	
	
	
}
