package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.domain.User;
import com.service.UserService;

/**
 * Servlet implementation class LogIncontroller
 */
public class LogIncontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogIncontroller() {
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
		UserService service = new UserService();
		User user = service.getUserByLogin(request.getParameter("email"));
		pass = hexString.toString();
		PrintWriter out = response.getWriter();
		out.println(user.getPassword());
		
		if(pass.equals(user.getPassword())){
			response.sendRedirect(request.getContextPath()+"/index.jsp");
		}
		else{
			request.setAttribute("username_pass_error", "username_pass_error");
			//response.
			//response.sendRedirect(request.getContextPath()+"/Pages/LogIn.jsp");
			request.getRequestDispatcher("Pages/LogIn.jsp").forward(request, response);;
		}
		}

}
