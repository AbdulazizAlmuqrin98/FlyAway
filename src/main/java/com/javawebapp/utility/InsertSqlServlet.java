package com.javawebapp.utility;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import com.javawebapp.utility.MySQLDatabaseUtils;

/**
 * Servlet implementation class InsertSqlServlet
 */
@WebServlet("/InsertSqlServlet")
public class InsertSqlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		//Read the parameter's from request
		String id = request.getParameter("id");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		String dob = request.getParameter("dob");
		String mobile = request.getParameter("mobile");

		
		try {
			//Initialize the database
			Connection connection = MySQLDatabaseUtils.getConnection();
			
			String INSERT_SQL = "insert into user(fname,lname,login,password,dob,mobile) values(?,?,?)";
			
			// create a Prepared Statement
			PreparedStatement preparedStatement = connection.prepareStatement(INSERT_SQL);
			
			preparedStatement.setString(1, id);
			preparedStatement.setString(2, fname);
			preparedStatement.setString(3, lname);
			preparedStatement.setString(4, login);
			preparedStatement.setString(5, password);
			preparedStatement.setString(6, dob);
			preparedStatement.setString(7, mobile);
			preparedStatement.executeUpdate();
			
			preparedStatement.close();
			connection.close();
			
			
			response.setContentType("text/html");
			
			PrintWriter out = response.getWriter();
			
			out.println("<h3>Successfully Inserted</h3>");
			
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		
		
	}

}