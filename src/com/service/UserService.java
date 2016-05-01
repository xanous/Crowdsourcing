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
	public void updateRequester(String password,String login, Class c){
		Session session =  Hibernate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		if(c.equals(Requester.class)) {
			Requester requester=(Requester) session.load(Requester.class,login);
			requester.setPassword(password);
	 	    session.update(requester);
		}
		else {
			Worker worker=(Worker) session.load(Worker.class,login);
			worker.setPassword(password);
	 	    session.update(worker);
		}
	 	session.getTransaction().commit();
	}
}
