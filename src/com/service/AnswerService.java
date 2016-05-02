package com.service;

import org.hibernate.Session;

import com.domain.Answer;
import com.util.Hibernate;

public class AnswerService {
	public void add(Answer ansr){
		Session session =  Hibernate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(ansr);
		session.getTransaction().commit();
	}
}
