package com.controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.UserManager;

public class LoginUserServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("pass");

		if (!UserManager.getInstance().loginValidation(email, password)) {
			response.getWriter().append("ERROR");
		} else {
			System.out.println("Logged");
		}
	}

}
