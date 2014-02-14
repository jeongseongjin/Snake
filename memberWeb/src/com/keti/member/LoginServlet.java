package com.keti.member;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.keti.member.DBUtils;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id= request.getParameter("id");
		String password= request.getParameter("password");
		String url = null;

		DBUtils dbUtils = new DBUtils();
		dbUtils.openConnection();
		String sql = "select * from javamodeling_member where id='" + id + "' and password='" + password + "'";
		ResultSet resultSet = dbUtils.selectQuery(sql);
		try {
			if(resultSet.next())
			{
				url = "memberlist.servlet";
				request.getSession().setAttribute("id", id);
				request.getSession().setAttribute("password", password);
				
			}
			else{
				url = "login.jsp";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		dbUtils.closeConnection();
		if(url!= null)
		{
			response.sendRedirect(url);
		}
		
	}
}


