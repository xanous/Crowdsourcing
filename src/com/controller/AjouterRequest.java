package com.controller;

import java.io.IOException;
<<<<<<< HEAD
import java.util.ArrayList;
=======
import java.util.Calendar;
>>>>>>> master

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.domain.Request;
<<<<<<< HEAD
import com.domain.User;
=======
>>>>>>> master
import com.service.RequesterService;

/**
 * Servlet implementation class AjouterRequest
 */
public class AjouterRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjouterRequest() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
<<<<<<< HEAD
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
         String nameprojet =request.getParameter("nameproject");
         String titre=request.getParameter("title");
         String description=request.getParameter("description");
         String  keywords = request.getParameter("keywords");
        
         int numberItem = Integer.parseInt(request.getParameter("number"));
         int numberWorkerItem=Integer.parseInt(request.getParameter("number1"));
         int numberWorkerSubmission=Integer.parseInt(request.getParameter("number2"));
         String rewardSubmission=request.getParameter("number3");
         String TotalWorkerRewards=request.getParameter("number4");
         String TotalCost =request.getParameter("number5");
         String Pay =request.getParameter("number6");
         int  TimeAllottedAssignment=Integer.parseInt(request.getParameter("number7"));
         int HITExpiresIn=Integer.parseInt(request.getParameter("number8"));
         int AutoApprove=Integer.parseInt(request.getParameter("nom9"));
         
         Request req=new Request();
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
         RequesterService  requesterservice = new RequesterService();
         HttpSession sess = request.getSession();
         String login = (String) sess.getAttribute("login");
         
         requesterservice.addRequest( nameprojet,description,titre,keywords,numberItem,numberWorkerItem,numberWorkerSubmission,
        rewardSubmission,TotalWorkerRewards,TotalCost, Pay,TimeAllottedAssignment, HITExpiresIn,AutoApprove,login);
         response.sendRedirect(request.getContextPath()+"/Pages/writing.jsp");
      //   request.getRequestDispatcher(request.getContextPath()+"/Pages/writing.jsp").forward(request, response);
         
         
	}

}
=======
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {			
	         String nameprojet =request.getParameter("nameproject");
	         String titre=request.getParameter("title");
	         String description=request.getParameter("description");
	         String  keywords = request.getParameter("keywords");
	        
	         int numberItem = Integer.parseInt(request.getParameter("number"));
	         int numberWorkerItem=Integer.parseInt(request.getParameter("number1"));
	         int numberWorkerSubmission=Integer.parseInt(request.getParameter("number2"));
	         String rewardSubmission=request.getParameter("number3");
	         String TotalWorkerRewards=request.getParameter("number4");
	         String TotalCost =request.getParameter("number5");
	         String Pay =request.getParameter("number6");
	         int  TimeAllottedAssignment=Integer.parseInt(request.getParameter("number7"));
	         int HITExpiresIn=Integer.parseInt(request.getParameter("number8"));
	         int AutoApprove=Integer.parseInt(request.getParameter("nom9"));
	         
	         Request req=new Request();
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
	         RequesterService  requesterservice = new RequesterService();
	         HttpSession sess = request.getSession();
	         String login = (String) sess.getAttribute("login");
	         String nom=(String) sess.getAttribute("firstName");
	         requesterservice.addRequest( nameprojet,description,titre,keywords,numberItem,numberWorkerItem,numberWorkerSubmission,
	        rewardSubmission,TotalWorkerRewards,TotalCost, Pay,TimeAllottedAssignment, HITExpiresIn,AutoApprove,login,Calendar.getInstance().getTime(),nom);
	         response.sendRedirect(request.getContextPath()+"/Pages/writing.jsp");
	      //   request.getRequestDispatcher(request.getContextPath()+"/Pages/writing.jsp").forward(request, response);
	         
	         
		}


	}
>>>>>>> master
