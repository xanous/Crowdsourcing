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
public class PasswordUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PasswordUpdateController() {
    	
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
		HttpSession session = request.getSession();
		Class c = session.getAttribute("class").equals("Worker") ? Worker.class : Requester.class;
		User user = (User) service.getUserByLogin((String) session.getAttribute("login"), c);
		
		String pass = request.getParameter("current");
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
		pass = hexString.toString();
		if(pass.equals(user.getPassword())){
			pass = request.getParameter("reNew");
			digest = null;
			try {
				digest = MessageDigest.getInstance("SHA-256");
			} catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
			}
			hash = digest.digest(pass.getBytes(StandardCharsets.UTF_8));
			pass = "";
			hexString = new StringBuffer();
			for (int i = 0; i < hash.length; i++) {
				hexString.append(Integer.toString((hash[i] & 0xff) + 0x100, 16).substring(1));
		        }
			service.updateRequester(hexString.toString(), user.getLogin(), c);
			response.sendRedirect("Pages/Settings.jsp");
		}
		else{
			request.setAttribute("username_pass_error", "Password incorrect");
			request.getRequestDispatcher("Pages/Settings.jsp").forward(request, response);
		}
	}
}
