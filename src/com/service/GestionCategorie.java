package com.service;

import org.hibernate.Session;

import com.domain.Categorie;
import com.util.Hibernate;



public class GestionCategorie {

public void addCategorie(String nom){
		
		Session session=Hibernate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Categorie cat=new Categorie(nom);
		session.save(cat);
		session.beginTransaction().commit();

	}
}
