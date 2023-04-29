package com.edix.eventos.modelo.entities;

import java.io.Serializable;
import javax.persistence.*;



import java.util.Date;




/**
 * The persistent class for the reservas database table.
 * 
 */
@Entity
@Table(name="reservas")
@NamedQuery(name="Reserva.findAll", query="SELECT r FROM Reserva r")
public class Reserva implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_reserva")
	private int idReserva;

	@Column(name="cantidad_personas")
	private int cantidadPersonas;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="fecha_reserva")
	private Date fechaReserva;

	//uni-directional many-to-one association to Evento
	@ManyToOne
	@JoinColumn(name="id_evento")
	private Evento evento;

	//uni-directional many-to-one association to Usuario
	@ManyToOne
	@JoinColumn(name="USERNAME")
	private Usuario usuario;

	public Reserva() {
	}

	public int getIdReserva() {
		return this.idReserva;
	}

	public void setIdReserva(int idReserva) {
		this.idReserva = idReserva;
	}

	public int getCantidadPersonas() {
		return this.cantidadPersonas;
	}

	public void setCantidadPersonas(int cantidadPersonas) {
		this.cantidadPersonas = cantidadPersonas;
	}

	public Date getFechaReserva() {
		return this.fechaReserva;
	}

	public void setFechaReserva(Date fechaReserva) {
		this.fechaReserva = fechaReserva;
	}

	public Evento getEvento() {
		return this.evento;
	}

	public void setEvento(Evento evento) {
		this.evento = evento;
	}

	public Usuario getUsuario() {
		return this.usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

}