package com.andrew.web;

import java.io.IOException;
import java.util.ArrayList;

import com.andrew.model.Product;
import com.andrew.web.dao.ProductDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class GetProductController
 */
@WebServlet("/getProduct")
public class GetProductController extends HttpServlet {

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		int id = (int)session.getAttribute("user_id");
		System.out.println(id);
		ProductDao dao = new ProductDao();
		ArrayList<Product> userProducts = dao.getProduct(id);

		session.setAttribute("productsList", userProducts);
		
		response.sendRedirect("index.jsp");
		}
}
