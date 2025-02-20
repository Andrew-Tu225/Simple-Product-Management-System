package com.andrew.web.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.andrew.model.User;
public class UserDao {
	public User getUser(String email)
	{
		User u1 = new User();
		try {
			String username = "root";
			String password = "Aa960713";
			
			String url = "jdbc:mysql://localhost:3306/ospjsp";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url,username, password);
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery("select * from User where email='"+email+"'");
			while(rs.next())
			{
				u1.setFirstName(rs.getString("firstName"));
				u1.setLastName(rs.getString("lastName"));
				u1.setEmail(rs.getString("email"));
				u1.setPassword(rs.getString("password"));
			}
			return u1;
		}
		catch(Exception e)
		{
			System.out.println(e);
			return null;
		}
	}
	
}
