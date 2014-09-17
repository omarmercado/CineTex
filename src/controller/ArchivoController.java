package controller;

import hibernate.Articulo;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import dao.ArchivoDAO;
import dao.PaginaDAO;


@Controller
public class ArchivoController {

	@Autowired
	ArchivoDAO archivoDAO;
	
	
	@Autowired
	PaginaDAO paginaDAO;

	@RequestMapping("/Archivo.htm")
	ModelAndView getArchivo (HttpServletRequest request){
		
		List<Articulo> ListaResultado = archivoDAO.getUltimos10();
	
		ModelAndView mv = new ModelAndView();
		
		Map<String, String> VersionInfo = paginaDAO.getVersion(request, "Archivo"); 

		mv.setViewName(VersionInfo.get("View"));
		
		
		    String tipo = VersionInfo.get("Tipo").trim();

			paginaDAO.pageView("Archivo", "",tipo);

		
		  mv.addObject("ListaResultado",ListaResultado);	
		return mv;
	}
	

	@RequestMapping("/ArchivoTodas.htm")
	ModelAndView getArchivoTodas(HttpServletRequest request){
		
		List<Articulo> ListaResultado = archivoDAO.getTodas();
		ModelAndView mv = new ModelAndView();	
		
		
		  if(request.getHeader("User-Agent").indexOf("Mobile") != -1 || request.getHeader("User-Agent").indexOf("Android") != -1) {
			    mv.setViewName("mobile/Archivo");
			  } else {
				    mv.setViewName("/Archivo");
			  }
		  
		mv.addObject("ListaResultado",ListaResultado);	
		
		return mv;
	}
	
	@RequestMapping(value="/ArchivoPorFecha.htm", method=RequestMethod.GET)
	ModelAndView getArchivoPorFecha (@RequestParam(value="mes")String mes, HttpServletRequest request ){
		
		List<Articulo> ListaResultado = archivoDAO.getPorMes(mes);
		ModelAndView mv = new ModelAndView();	
		
		  if(request.getHeader("User-Agent").indexOf("Mobile") != -1 || request.getHeader("User-Agent").indexOf("Android") != -1) {
			    mv.setViewName("mobile/Archivo");
			  } else {
				    mv.setViewName("/Archivo");
			  }
		  
		mv.addObject("ListaResultado",ListaResultado);	
		
		return mv;
	}
	
}
