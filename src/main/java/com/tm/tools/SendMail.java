package com.tm.tools;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail {
	
	public static void sendMail(String to,String sub ,String mess){
		  final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
		  // Get a Properties object
		     Properties props = System.getProperties();
		     props.setProperty("mail.smtp.host", "smtp.gmail.com");
		     props.setProperty("mail.smtp.socketFactory.class", SSL_FACTORY);
		     props.setProperty("mail.smtp.socketFactory.fallback", "false");
		     props.setProperty("mail.smtp.port", "465");
		     props.setProperty("mail.smtp.socketFactory.port", "465");
		     props.put("mail.smtp.auth", "true");
		     props.put("mail.debug", "true");
		     props.put("mail.store.protocol", "pop3");
		     props.put("mail.transport.protocol", "smtp");
		     final String username = "tehnomarketmail@gmail.com";//
		     final String password = "1234tehno";
		     try{
		     Session session = Session.getDefaultInstance(props, 
		                          new Authenticator() {
		                             protected PasswordAuthentication getPasswordAuthentication() {
		                                return new PasswordAuthentication(username, password);
		                             }});

		   // -- Create a new message --
		     Message msg = new MimeMessage(session);

		  // -- Set the FROM and TO fields --
		     msg.setFrom(new InternetAddress("tehnomarketmail@gmail.com"));
		     msg.setRecipients(Message.RecipientType.TO, 
		                      InternetAddress.parse(to,false));
		     msg.setSubject(sub);
		     msg.setText(mess);
		     msg.setSentDate(new Date());
		     Transport.send(msg);
		     System.out.println("Message sent.");
		  }catch (MessagingException e){ System.out.println("Erreur d'envoi, cause: " + e);}
		  }
//		Properties props = System.getProperties();
//		String host = "localhost";
//		String from = "Tehnomarket.Mail@gmail.com";
//		props.setProperty("mail.smtp.host", host);
//	    Session session = Session.getDefaultInstance(props);
//	    try {
//		    MimeMessage message = new MimeMessage(session);
//		    
//		    message.setFrom(new InternetAddress(from));
//		    message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
//	        message.setSubject(sub);
//	        message.setText(msg);
//	        Transport.send(message);
//	        System.out.println("MESSAGE SEND SUCCESSFULY");
//	        return true;
//	    }catch(MessagingException mex){
//	    	System.out.println("ERROR: SENDING MESSAGE");
//	    	mex.printStackTrace();
//	    	return false;
//	    }
//		Session session = Session.getDefaultInstance(props,
//			new javax.mail.Authenticator() {
//				protected PasswordAuthentication getPasswordAuthentication() {
//					return new PasswordAuthentication("Tehnomarket.Mail","1234rfvbnm");
//				}
//			});
//
//		try {
//
//			Message message = new MimeMessage(session);
//			message.setFrom(new InternetAddress("Tehnomarket.Mail@gmail.com"));
//			message.setRecipients(Message.RecipientType.TO,
//					InternetAddress.parse(to));
//			message.setSubject(sub);
//			message.setContent(msg, "text/html" );
//			//message.setText(msg);
//
//			Transport.send(message);
//
//			return true;
//
//		} catch (MessagingException e) {
//			throw new RuntimeException(e);
//		}
}
		
