package com.edix.eventos.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.edix.eventos.modelo.entities.Evento;



public interface EventoRepository extends JpaRepository<Evento, Integer>{

	//@Query ("Select e FROM Evento e WHERE e.estado= 'activo'")
	//List<Evento> eventoactivos();
	
	
	//@Query (" Select d FROM Evento d Where d.destacado= 's'")
	//List<Evento>eventosdestacados ();
	
	//@Query ("Select s FROM Evento s WHERE s.nombre LIKE %?1%")
	//List<Evento> subcadenaevento(String subcadena);
	
	//@Query ( "Select e from Evento e")
	//List <Evento> todosEventos ();
	
}
