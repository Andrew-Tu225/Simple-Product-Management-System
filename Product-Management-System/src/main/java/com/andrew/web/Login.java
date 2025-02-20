package com.andrew.web;

import java.io.IOException;

import com.andrew.model.User;
import com.andrew.web.dao.UserDao;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");		
		UserDao udao = new UserDao();
		User u1 = udao.getUser(email);
		
		if (u1 != null)
		{
			if (u1.getPassword().equals(password)) {
				HttpSession session = request.getSession();
				session.setAttribute("email", email);
				session.setAttribute("user_id", u1.getId());
				response.sendRedirect("/Product-Management-System/getProduct");
			}
			else {
				response.sendRedirect("login.jsp?msg=invalid");
			}
		}
		else {
			response.sendRedirect("login.jsp?msg=invalid");
		}
	}

}
