package com.service;



<<<<<<< HEAD
=======
import java.util.Date;
import java.util.List;

import org.hibernate.Criteria;
>>>>>>> master
import org.hibernate.Session;

import com.domain.Request;
import com.domain.Requester;
import com.util.Hibernate;

public class RequesterService {

<<<<<<< HEAD
	public void addRequest(String nameprojet,String titre, String description, String  keywords, int numberItem, int numberWorkerItem,int numberWorkerSubmission,  String rewardSubmission,String TotalWorkerRewards, String TotalCost,String Pay,int  TimeAllottedAssignment, int HITExpiresIn, int AutoApprove,String nom){
=======
	public void addRequest(String nameprojet,String titre, String description, String  keywords, int numberItem, int numberWorkerItem,int numberWorkerSubmission,  String rewardSubmission,String TotalWorkerRewards, String TotalCost,String Pay,int  TimeAllottedAssignment, int HITExpiresIn, int AutoApprove,String nom,Date date,String firstName){
>>>>>>> master
		
		Session session =  Hibernate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
	   Request req=new Request();
	//	Requester requester = (Requester) session.load(Requester.class,nom);
	 //   req.setRequest(requester);
	    
		req.setNomprojet(nameprojet);
        req.setDescription(description);
        req.setTitle(titre);
        req.setTags(keywords);
        req.setNumberItem(numberItem);
        req.setNumberWorkerItem(numberWorkerItem);
        req.setNumberWorkerSubmission(numberWorkerSubmission);
        req.setRewardSubmission(rewardSubmission);
        req.setTotalWorkerRewards(TotalWorkerRewards);
        req.setTotalCost(TotalCost);
        req.setPaye(Pay);
        req.setTimeAllottedAssignment(TimeAllottedAssignment);
        req.setHITExpiresIn(HITExpiresIn);
        req.setAutoApprove(AutoApprove);
        req.setNomRequester(nom);
<<<<<<< HEAD
        
=======
        req.setDateCreation(date);
>>>>>>> master
		session.save(req);
		session.getTransaction().commit();
		
	}
	
	public Requester getRequester(String login){
		Session session =  Hibernate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Requester req=(Requester) session.load(Requester.class,login);
		return req;
	
	
	}
	
<<<<<<< HEAD
	public void updateRequester(String login,String nom,String instruction){
		Session session =  Hibernate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
	   Request req=(Request) session.load(Request.class,nom);
	   Requester requester=(Requester) session.load(Requester.class,login);
		//req.setRequest(requester);
		req.setInstruction(instruction);
		session.update(req);
		session.getTransaction().commit();
	}
=======
	public void updateRequester(String password,String login){
		Session session =  Hibernate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
	 //  Request req=(Request) session.load(Request.class,nom);
	   Requester requester=(Requester) session.load(Requester.class,login);
	   requester.setPassword(password);
		//req.setRequest(requester);
		//req.setInstruction(instruction);
		//session.update(req);
	   session.update(requester);
		session.getTransaction().commit();
	}
	
	public void getAllRequest(String login){
		Session session =  Hibernate.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Criteria criteria=session.createCriteria(Request.class,"login");
		List<Request> request=criteria.list();
		for(Request requests :request){
			System.out.println(requests.getNomprojet());
			System.out.println(requests.getAutoApprove());
		}
		//List<Request> request = session.createQuery("from Request").list();	
	}
	
	
>>>>>>> master
}
