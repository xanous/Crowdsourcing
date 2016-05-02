package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.domain.Answer;
import com.service.AnswerService;

/**
 * Servlet implementation class AnswerController
 */
public class AnswerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnswerController() {
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AnswerService service = new AnswerService();
		HttpSession session = request.getSession();
		int id_proj = (Integer) session.getAttribute("id_projet");
		Answer answer = new Answer((String) session.getAttribute("login"),
				id_proj,
				request.getParameter("answer"));
		service.add(answer);
		session.removeAttribute("id_projet");
	}

}
