package com.andrew.web.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.andrew.model.Product;

public class ProductDao {
	
	public ArrayList<Product> getProduct(int userId)
	{
		ArrayList<Product> userProducts = new ArrayList<Product>();
		try {
			String username = "root";
			String password = "Aa960713";
			
			String url = "jdbc:mysql://localhost:3306/ospjsp";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url,username, password);
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery("select * from product where user_id="+userId+"");
			System.out.println("work here");
			while(rs.next())
			{
				Product p = new Product();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setCategory(rs.getString("category"));
				p.setPrice(rs.getInt("price"));
				p.setActive(rs.getString("active"));
				userProducts.add(p);
				System.out.println(p);
			}
			return userProducts;
		}
		catch(Exception e)
		{
			System.out.println(e);
			return null;
		}
	}
	
}
