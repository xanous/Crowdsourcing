package com.service;



	import java.util.Properties;
	import javax.mail.Message;
	import javax.mail.MessagingException;
	import javax.mail.Session;
	import javax.mail.Transport;
	import javax.mail.internet.AddressException;
	import javax.mail.internet.InternetAddress;
	import javax.mail.internet.MimeMessage;
	 
	 
	public class SendEmail {
	 
		static Properties mailServerProperties;
		static Session getMailSession;
		static MimeMessage generateMailMessage;
	 
		public static void generateAndSendEmail(String email,String password,String nom,String prenom) throws AddressException, MessagingException {
	 
			// Step1
			mailServerProperties = System.getProperties();
			mailServerProperties.put("mail.smtp.port", "587");
			mailServerProperties.put("mail.smtp.auth", "true");
			mailServerProperties.put("mail.smtp.starttls.enable", "true");
	 
			// Step2
			getMailSession = Session.getDefaultInstance(mailServerProperties, null);
			generateMailMessage = new MimeMessage(getMailSession);
			generateMailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
			generateMailMessage.setSubject("Recover Username and Password");
			String emailBody = "Bonjour Mr."+nom+" "+prenom+"<br><br>Your Password: "+password+"<br><br>Cordialement";				
			generateMailMessage.setContent(emailBody, "text/html");
	 
			// Step3
			Transport transport = getMailSession.getTransport("smtp");
			transport.connect("smtp.gmail.com", "benhmid.oualid", "foldmortlemagic");
			transport.sendMessage(generateMailMessage, generateMailMessage.getAllRecipients());
			transport.close();
		}
	}



