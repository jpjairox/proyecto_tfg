package com.edix.eventos.modelo.dao;

import java.util.List;

import com.edix.eventos.modelo.entities.Evento;

public interface EventoDao {

//	Evento findById(int idEvento);
	List<Evento> listaEventos();
	boolean registro(Evento evento);
	Evento buscarUno(int idEvento);
//	List<Evento> eventoactivos();
//	List<Evento>eventosdestacados ();
	Evento altaEvento (Evento evento);
	Evento modificarEvento (Evento evento);
	void eliminarEvento (int idEvento);
}
