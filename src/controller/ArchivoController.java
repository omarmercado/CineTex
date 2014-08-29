package controller;

import hibernate.Articulo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import dao.ArchivoDAO;


@Controller
public class ArchivoController {

	@Autowired
	ArchivoDAO archivoDAO;

	@RequestMapping("/Archivo.htm")
	ModelAndView getArchivo (HttpServletRequest request){
		
		List<Articulo> ListaResultado = archivoDAO.getUltimos10();
//		ModelAndView mv = new ModelAndView("Archivo");	
	
		ModelAndView mv = new ModelAndView();
		
		
		  if(request.getHeader("User-Agent").indexOf("Mobile") != -1) {
			    mv.setViewName("mobile/Archivo");
			  } else {
				    mv.setViewName("/Archivo");
			  }
		
		
		  mv.addObject("ListaResultado",ListaResultado);	
		return mv;
	}
	

	@RequestMapping("/ArchivoTodas.htm")
	ModelAndView getArchivoTodas(HttpServletRequest request){
		
		List<Articulo> ListaResultado = archivoDAO.getTodas();
		ModelAndView mv = new ModelAndView();	
		
		
		  if(request.getHeader("User-Agent").indexOf("Mobile") != -1) {
			    mv.setViewName("mobile/Archivo");
			  } else {
				    mv.setViewName("/Archivo");
			  }
		  
		mv.addObject("ListaResultado",ListaResultado);	
		
		return mv;
	}
	
	@RequestMapping(value="/ArchivoPorFecha.htm", method=RequestMethod.POST)
	ModelAndView getArchivoPorFecha (@RequestParam(value="mes")String mes, HttpServletRequest request ){
		
		List<Articulo> ListaResultado = archivoDAO.getPorMes(mes);
		ModelAndView mv = new ModelAndView();	
		
		  if(request.getHeader("User-Agent").indexOf("Mobile") != -1) {
			    mv.setViewName("mobile/Archivo");
			  } else {
				    mv.setViewName("/Archivo");
			  }
		  
		mv.addObject("ListaResultado",ListaResultado);	
		
		return mv;
	}
	
}
