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
	
	public User getClientByLogin(String login){
		Session session=Hibernate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		User user=(User) session.load(User.class, login);
		
		return user;
		
	}
	
/*	public User getUser(){
		Session session=Hibernate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		User user=(User) session.createQuery("from User").list();
		return user;
		}*/
}
