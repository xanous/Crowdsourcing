package com.controller;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.domain.User;
import com.domain.Worker;
import com.service.UserService;

/**
 * Servlet implementation class LogInWcontroller
 */
public class LogInWorkerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogInWorkerController() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String pass = request.getParameter("password");
		MessageDigest digest = null;
		try {
			digest = MessageDigest.getInstance("SHA-256");
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		byte[] hash = digest.digest(pass.getBytes(StandardCharsets.UTF_8));
		pass = "";
		StringBuffer hexString = new StringBuffer();
		for (int i = 0; i < hash.length; i++) {
			hexString.append(Integer.toString((hash[i] & 0xff) + 0x100, 16).substring(1));
	        }
<<<<<<< HEAD:src/com/controler/SignInContorler.java
		User user = new User(request.getParameter("email"), hexString.toString(), request.getParameter("fname"),request.getParameter("lname"), new Date());
		UserService service1 = new UserService();
		
		service1.add(user);
		RequestDispatcher dispatcher=request.getRequestDispatcher("Pages/SignIn.jsp");
		dispatcher.forward(request, response);

		
=======
		UserService service = new UserService();
		User user = service.getUserByLogin(request.getParameter("email"),Worker.class);
		pass = hexString.toString();
		
		if(user == null ){
			request.setAttribute("username_pass_error", "username_pass_error");
			request.getRequestDispatcher("Pages/LogInRequester.jsp").forward(request, response);;
		}
		else if(pass.equals(user.getPassword())){
			HttpSession session = request.getSession(false);
			if(session != null )
					session.invalidate();
			session = request.getSession(true);
			session.setAttribute("login", user.getLogin());
			session.setAttribute("class", Worker.class);
			response.sendRedirect(request.getContextPath()+"/Pages/HomeWorker.jsp");
		}
		else{
			request.setAttribute("username_pass_error", "username_pass_error");
			request.getRequestDispatcher("Pages/LogInRequester.jsp").forward(request, response);;
		}
>>>>>>> 137835ef4f547f163fc4dca42f09bbad3fee11c5:src/com/controller/LogInWorkerController.java
	}

}
