package com.edix.eventos.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;


import com.edix.eventos.modelo.dao.EventoDao;
import com.edix.eventos.modelo.entities.Evento;


@Controller
@RequestMapping("/rest/eventos")
public class EventoController {
	
	@Autowired
	private EventoDao eventoRepo;
	
	@GetMapping ("/listar")
	public String listaEventos (Model model){
		List<Evento> lista = eventoRepo.listaEventos();
		model.addAttribute("listaEventos", lista);
		return "listaEventos";
	}
	
//	@GetMapping ("/activos")
//	public List<Evento> eventosActivos (){
//		return eventoRepo.eventoactivos();
//	}
	
//	@GetMapping ("/destacados")
//	public List<Evento> eventosDestacados (){
//		return eventoRepo.eventosdestacados();
//	
//	}
	
	@GetMapping ("/verUno/{idEvento}")
	public String buscarUno (Model model, @PathVariable ("idEvento") int idEvento){
		Evento evento = eventoRepo.buscarUno(idEvento);
		model.addAttribute("evento", evento);
		
		return "verUnEvento";
		
	}
	
	@GetMapping ("/alta")
	public String formAltaEvento (){
		
		return "formEventoAlta";
		
	}
	@PostMapping ("/alta")
	public String altaEvento (Evento evento) {
		eventoRepo.altaEvento(evento);
		return "redirect:/rest/eventos/listar";
//		if (eventoRepo.altaEvento(evento) != null) {
//			return "Evento dado de alta";
//		}else return "Evento no dado de alta";
		
	}
	
	@GetMapping ("/modificar/{idEvento}")
	public String formEditarEvento (Model model, @PathVariable("idEvento") int idEvento) {
		model.addAttribute("evento", eventoRepo.buscarUno(idEvento));
		return "formEventoEditar";
//		if (eventoRepo.modificarEvento(evento) != null) {
//			return "Evento modificado correctamente";
//		}else return "Evento no modificado";
	}
	@PostMapping ("/modificar/{idEvento}")
	public String modificarEvento (Evento evento) {
//		eventoRepo.modificarEvento(evento);
//		return "redirect:/rest/eventos/listar";
		return "index";
	}	
		
		
	
	@GetMapping ("/eliminar/{idEvento}")
	public String eliminarEvento (@PathVariable ("idEvento") int idEvento) {
		eventoRepo.eliminarEvento(idEvento);
		return "forward:/rest/eventos/listar";
	}
	
//	@GetMapping ("/plazasQuedan/{idEvento}")
//	public Map <String, Integer> plazasQuedan(@PathVariable ("idEvento") int idEvento){
//		Evento e = eventoRepo.buscarUno(idEvento);
//		int ocupadas = reservaRepo.plazasocupadas(idEvento);
//		int respuesta= e.getAforoMax()-ocupadas;
//		Map <String, Integer> m= new HashMap<String, Integer>();
//		m.put("plazas_quedan", respuesta);
//		return m;
//	}

}
