package com.keti.member;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

/**
 * Servlet implementation class DeleteServlet
 */
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String memberSession = (String)request.getSession().getAttribute("id");
		if(memberSession==null){
			request.getRequestDispatcher("login.jsp").forward(request, response);
			return;
		}
		else{
			String arg = request.getParameter("no");

			DBUtils dbUtils = new DBUtils();
			dbUtils.openConnection();
			String sql = "delete from javamodeling_member where no='"+arg+"'";
			dbUtils.sendQuery(sql);

			dbUtils.closeConnection();

			response.sendRedirect("memberlist.servlet");


		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
