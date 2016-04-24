package com.service;

import org.hibernate.Session;

import com.domain.User;
import com.util.Hibernate;


public class UserService {
	
	public void add(User u){
		Session session =  Hibernate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(u);
		session.getTransaction().commit();
	}
}
