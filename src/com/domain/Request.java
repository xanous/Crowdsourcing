package com.domain;

import java.util.ArrayList;

public class Request {
	Long idRequest;
	 String title;
	 String Description;
	Categorie categorie;
	public Long getIdRequest() {
		return idRequest;
	}
	public void setIdRequest(Long idRequest) {
		this.idRequest = idRequest;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public Categorie getCategorie() {
		return categorie;
	}
	public void setCategorie(Categorie categorie) {
		this.categorie = categorie;
	}
	public Request() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
