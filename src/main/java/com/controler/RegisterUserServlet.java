package com.controler;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.UserManager;

public class RegisterUserServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String firstName = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		SimpleDateFormat formatter = new SimpleDateFormat("MM-dd-yyyy");
		UserManager.getInstance().registerUser(firstName, lastName, email, password, true, null, true);
		// Date date=null;
		// try {
		// date = (formatter.parse(request.getParameter("date")));
		// } catch (ParseException e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// }
		// String isSubscribed = request.getParameter("subscribed");
	}

}
