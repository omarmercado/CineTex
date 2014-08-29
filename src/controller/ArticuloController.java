package controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.ArticuloDAO;
import dao.UsuariosDAO;


@Controller
public class ArticuloController {

	@Autowired
	ArticuloDAO articuloDAO;
	
	@Autowired
	UsuariosDAO usuariosDAO;

	@RequestMapping(value ="NuevoArticulo.htm", method=RequestMethod.POST)
	public ModelAndView newArticulo(@RequestParam(value="titulo")String titulo,
			         @RequestParam(value="texto")String texto,
					 @RequestParam(value="url")String url,
					 HttpServletRequest request){
		
		
		int activeSession = usuariosDAO.revisarSession(request);
		
		if(activeSession == 0){
			ModelAndView mv = new ModelAndView();
			mv.setViewName("/Portada");
				  
			return mv;
		}
		
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("titulo", titulo);
		map.put("texto",texto);
		map.put("url",url);
		
		articuloDAO.newArticulo(map);
	
		return new ModelAndView("redirect:/Portada.htm");
	}
	
	@RequestMapping(value ="NuevoArticulo.htm")
	public ModelAndView newArticulo(HttpServletRequest request){
		
		int activeSession = usuariosDAO.revisarSession(request);
		
		if(activeSession == 0){
			ModelAndView mv = new ModelAndView();
			mv.setViewName("/Portada");
				  
			return mv;
		}
		
			
		return new ModelAndView("/NuevoArticulo");
	}
	
	
}
