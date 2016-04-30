package com.service;

import org.hibernate.classic.Session;

import com.domain.Categorie;
import com.domain.Request;
import com.util.Hibernate;


public class GestionRequest {

	public void addRequest(String titre,String Description,String nom ){
		Session session=Hibernate.getSessionFactory().getCurrentSession();
		//Session session=Hibernate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Request req=new Request();
		Categorie c=(Categorie) session.load(Categorie.class,nom);
		req.setCategorie(c);
		req.setDescription(Description);
		req.setTitle(titre);
		session.save(c);
		session.getTransaction().commit();
		
	}
}
