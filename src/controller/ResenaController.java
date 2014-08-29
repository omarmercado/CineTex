package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import hibernate.Articulo;
import hibernate.Usuario;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.ResenaDAO;
import dao.UsuariosDAO;


@Controller
public class ResenaController {

	@Autowired
	ResenaDAO resenaDAO;
	
	@Autowired
	UsuariosDAO usuariosDAO;

	@RequestMapping("/Resena.htm")
	public ModelAndView getResena(@RequestParam(value="id")String id,HttpServletRequest request){
		
		
		Articulo Resena = resenaDAO.getResena(id);
		
		ModelAndView mv = new ModelAndView();
		
		  if(request.getHeader("User-Agent").indexOf("Mobile") != -1) {
			    mv.setViewName("mobile/Resena");
			  } else {
				  mv.setViewName("Resena");
			  }
		  
		mv.addObject("Resena",Resena);
		return mv;
	}

	@RequestMapping(value="/ResenaEdit.htm",method=RequestMethod.POST )
	public ModelAndView setResenaEdit(@RequestParam(value="id")String id,
			@RequestParam(value="txtTitulo")String titulo,
			@RequestParam(value="txtTexto")String texto,
			@RequestParam(value="txtUrl")String url,
			HttpServletRequest request){
		
		
		int activeSession = usuariosDAO.revisarSession(request);
		
		if(activeSession == 0){
			ModelAndView mv = new ModelAndView();
			mv.setViewName("/Portada");
				  
			return mv;
		}
		
		resenaDAO.setResenaEdit(id, titulo, texto, url);
		
		Articulo Resena = resenaDAO.getResena(id);

		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/Resena");
		mv.addObject("Resena",Resena);
		
		return mv;
	}
	
	@RequestMapping(value="/ResenaEliminar.htm", method=RequestMethod.POST)
	public ModelAndView setResenaEdit(@RequestParam(value="id")String id,HttpServletRequest request){
		
		
		int activeSession = usuariosDAO.revisarSession(request);
		
		if(activeSession == 0){
			ModelAndView mv = new ModelAndView();
			mv.setViewName("/Portada");
				
			return mv;
		}
		
		resenaDAO.ResenaEliminar(id);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("/Portada");

		return mv;
	}
	
}
