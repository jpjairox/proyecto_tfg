package com.edix.eventos.modelo.entities;

import java.io.Serializable;
import javax.persistence.*;


import java.util.Date;


/**
 * The persistent class for the eventos database table.
 * 
 */
@Entity
@Table(name="eventos")
@NamedQuery(name="Evento.findAll", query="SELECT e FROM Evento e")
public class Evento implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idEvento;

	private byte activo;

	@Column(name="aforo_max")
	private int aforoMax;

	@Column(name="descripcion_e")
	private String descripcionE;

	private String destacado;

	private String direccion;

	private int duracion;

	private String ciudad;

	@Temporal(TemporalType.DATE)
	@Column(name="fecha_inicio")
	private Date fechaInicio;

	@Column(name="minimo_asistencia")
	private int minimoAsistencia;

	@Column(name="nombre_e")
	private String nombreE;

	@Column(name="precio_decimal")
	private double precioDecimal;

	private String tipo;

	public Evento() {
	}

	public int getIdEvento() {
		return this.idEvento;
	}

	public void setIdEvento(int idEvento) {
		this.idEvento = idEvento;
	}

	public byte getActivo() {
		return this.activo;
	}

	public void setActivo(byte activo) {
		this.activo = activo;
	}

	public int getAforoMax() {
		return this.aforoMax;
	}

	public void setAforoMax(int aforoMax) {
		this.aforoMax = aforoMax;
	}

	public String getDescripcionE() {
		return this.descripcionE;
	}

	public void setDescripcionE(String descripcionE) {
		this.descripcionE = descripcionE;
	}

	public String getDestacado() {
		return this.destacado;
	}

	public void setDestacado(String destacado) {
		this.destacado = destacado;
	}

	public String getDireccion() {
		return this.direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public int getDuracion() {
		return this.duracion;
	}

	public void setDuracion(int duracion) {
		this.duracion = duracion;
	}

	public String getCiudad() {
		return this.ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	public Date getFechaInicio() {
		return this.fechaInicio;
	}

	public void setFechaInicio(Date fechaInicio) {
		this.fechaInicio = fechaInicio;
	}

	public int getMinimoAsistencia() {
		return this.minimoAsistencia;
	}

	public void setMinimoAsistencia(int minimoAsistencia) {
		this.minimoAsistencia = minimoAsistencia;
	}

	public String getNombreE() {
		return this.nombreE;
	}

	public void setNombreE(String nombreE) {
		this.nombreE = nombreE;
	}

	public double getPrecioDecimal() {
		return this.precioDecimal;
	}

	public void setPrecioDecimal(double precioDecimal) {
		this.precioDecimal = precioDecimal;
	}

	public String getTipo() {
		return this.tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

}