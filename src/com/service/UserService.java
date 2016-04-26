package com.service;

import org.hibernate.Session;

import com.domain.Requester;
import com.domain.User;
import com.domain.Worker;
import com.util.Hibernate;


public class UserService {
	
	public void add(Requester u){
		Session session =  Hibernate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(u);
		session.getTransaction().commit();
	}
	
	public void add(Worker u){
		Session session =  Hibernate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(u);
		session.getTransaction().commit();
	}
	public User getUserByLogin(String login,Class c){
		Session session=Hibernate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		//User user=(User) session.load(User.class, login);
		User user = (User) session.get(c, login);
		return user;
		
	}
}
