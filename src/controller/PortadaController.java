package controller;

import hibernate.Articulo;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dao.PortadaDAO;


@Controller
public class PortadaController {

	@Autowired
	PortadaDAO portadaDAO;
		
	@RequestMapping("/Portada.htm")
	public ModelAndView getPortada(HttpServletRequest request){

		List<Articulo> ListaResenas = new ArrayList<Articulo>();
		ListaResenas = portadaDAO.getUltimasResenas();

		ModelAndView mv = new ModelAndView();
		
		  if(request.getHeader("User-Agent").indexOf("Mobile") != -1 || request.getHeader("User-Agent").indexOf("Android") != -1) {
			    mv.setViewName("mobile/Portada");
			  } else {
				    mv.setViewName("/Portada");
			  }
		  
		  mv.addObject("ListaResenas",ListaResenas);
		return mv ;

	}
	
	
	
	
	
}
