package controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import hibernate.Articulo;
import hibernate.Pagina;
import hibernate.Usuario;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.PaginaDAO;
import dao.ResenaDAO;
import dao.UsuariosDAO;


@Controller
public class ResenaController {

	@Autowired
	ResenaDAO resenaDAO;
	
	@Autowired
	UsuariosDAO usuariosDAO;
	
	@Autowired
	PaginaDAO paginaDAO;

	@RequestMapping("/Resena.htm")
	public ModelAndView getResena(@RequestParam(value="id")String id,HttpServletRequest request){
		
		
		Articulo Resena = resenaDAO.getResena(id);
		Pagina pagina = paginaDAO.getPagina();

		ModelAndView mv = new ModelAndView();
		
	    
		Map<String, String> VersionInfo = paginaDAO.getVersion(request, "Resena"); 
		mv.setViewName(VersionInfo.get("View"));


	    String tipo = VersionInfo.get("Tipo").trim();
		  
			paginaDAO.pageView("Resena", id, tipo);

			mv.addObject("Pagina",pagina);

		mv.addObject("Resena",Resena);
		return mv;
	}

	@RequestMapping(value="/ResenaEdit.htm",method=RequestMethod.POST )
	public ModelAndView setResenaEdit(@RequestParam(value="id")String id,
			@RequestParam(value="txtTitulo")String titulo,
			@RequestParam(value="txtTexto")String texto,
			@RequestParam(value="txtUrl")String url,
			@RequestParam(value="txtContent")String content,
			@RequestParam(value="txtOgContent")String ogContent,
			HttpServletRequest request){
		
		 
		int activeSession = usuariosDAO.revisarSession(request);
		
		if(activeSession == 0){
			ModelAndView mv = new ModelAndView();
			mv.setViewName("/Portada");
				  
			return mv;
		}
		
		resenaDAO.setResenaEdit(id, titulo, texto, url,content, ogContent);
		
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
