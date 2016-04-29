package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.domain.Requester;
import com.domain.User;
import com.domain.Worker;
import com.service.UserService;


/**
 * Servlet implementation class SignInContorler
 */
public class SingUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SingUpController() {
    	
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
		UserService service = new UserService();
		User user = null;
		if(request.getParameter("type_account").equals("Requester")){
			user = service.getUserByLogin(request.getParameter("email"),Requester.class);
			if(user != null ){
				request.setAttribute("username_pass_error", "Login exists as Requester");
				request.getRequestDispatcher("Pages/SignUp.jsp").forward(request, response);
			}
		}
		else if(request.getParameter("type_account").equals("Worker")){
			user = service.getUserByLogin(request.getParameter("email"),Worker.class);
			if(user != null ){
				request.setAttribute("username_pass_error", "Login exists as Worker");
				request.getRequestDispatcher("Pages/SignUp.jsp").forward(request, response);
			}
		}
		if(user == null ){
			String pass = request.getParameter("password");
			MessageDigest digest = null;
			try {
				digest = MessageDigest.getInstance("SHA-256");
			} catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
			}
			byte[] hash = digest.digest(pass.getBytes(StandardCharsets.UTF_8));
			pass = "";
			StringBuffer hexString = new StringBuffer();
			for (int i = 0; i < hash.length; i++) {
				hexString.append(Integer.toString((hash[i] & 0xff) + 0x100, 16).substring(1));
		        }
			if(request.getParameter("type_account").equals("Requester")){
				Requester userR = new Requester(request.getParameter("email"), hexString.toString(),
				request.getParameter("fname"),request.getParameter("lname"));
				service.add(userR);
				HttpSession session = request.getSession(false);
				if(session != null )
						session.invalidate();
				session = request.getSession(true);
				session.setAttribute("login", user.getLogin());
				request.getRequestDispatcher("Pages/HomeRequester.jsp").forward(request, response);
			}
			else if(request.getParameter("type_account").equals("Worker")){
				Worker userW = new Worker(request.getParameter("email"), hexString.toString(),
				request.getParameter("fname"),request.getParameter("lname"));
				service.add(userW);
				HttpSession session = request.getSession(false);
				if(session != null )
						session.invalidate();
				session = request.getSession(true);
				session.setAttribute("login", user.getLogin());
				request.getRequestDispatcher("Pages/HomeWorker.jsp").forward(request, response);
			}
		}
	}
}
