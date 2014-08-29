package controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.ArticuloDAO;


@Controller
public class ArticuloController {

	@Autowired
	ArticuloDAO articuloDAO;

	@RequestMapping(value ="NuevoArticulo.htm", method=RequestMethod.POST)
	public ModelAndView newArticulo(@RequestParam(value="titulo")String titulo,
			         @RequestParam(value="texto")String texto,
					 @RequestParam(value="url")String url){
		
		
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("titulo", titulo);
		map.put("texto",texto);
		map.put("url",url);
		
		articuloDAO.newArticulo(map);
	
		return new ModelAndView("redirect:/Portada.htm");
	}
	
	@RequestMapping(value ="NuevoArticulo.htm")
	public ModelAndView newArticulo(){
			
		return new ModelAndView("/NuevoArticulo");
	}
	
	
}
