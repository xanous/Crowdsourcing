package com.domain;

public class Categorie {

	//Long idCategorie;
	String nomCategorie;
	
	/*public Long getIdCategorie() {
		return idCategorie;
	}*/
	/*public void setIdCategorie(Long idCategorie) {
		this.idCategorie = idCategorie;
	}*/
	public String getNomCategorie() {
		return nomCategorie;
	}
	public void setNomCategorie(String nomCategorie) {
		this.nomCategorie = nomCategorie;
	}
	public Categorie(String nomCategorie) {
		super();
		this.nomCategorie = nomCategorie;
	}
	public Categorie() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
