package com.controler;

import java.io.IOException;
import java.io.PrintWriter;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.domain.User;
import com.service.SendEmail;
import com.service.UserService;

/**
 * Servlet implementation class ForgotPassword
 */
public class ForgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgotPassword() {
       
        // TODO Auto-generated constructor stub
       
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserService userManager=new UserService();
		PrintWriter out=response.getWriter();
		String email=request.getParameter("email");
		User user= userManager.getClientByLogin(email);
		out.print("ok1");
		if(user!=null){
			out.print("ok2");
			try {
				SendEmail.generateAndSendEmail(user.getLogin(),user.getPassword(),user.getFirstName(),user.getLastName());
				out.print("message envoyé avec successé");
			} catch (AddressException e) {
				out.print("erreur");
				
			} catch (MessagingException e) {
				out.print("erreur1");
			}
		}
		else{
			out.print("email non valide");
		}
		out.print("ok3");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
