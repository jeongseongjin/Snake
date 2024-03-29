package com.keti.member;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberListServlet
 */
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SearchServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		//String username = request.getParameter("username");
		String memberSession = (String)request.getSession().getAttribute("id");
		if(memberSession==null){
			request.getRequestDispatcher("login.jsp").forward(request, response);
			return;
		}
		else {
			String arg = request.getParameter("no");

			DBUtils dbUtils = new DBUtils();
			dbUtils.openConnection();
			String sql = "select * from javamodeling_member where no='"+arg+"'";
			ResultSet resultset = dbUtils.selectQuery(sql);

			Member member=null;
			try {
				if(resultset.next()){
					member = new Member();
					member.setNo(resultset.getBigDecimal("NO").intValue());
					member.setId(resultset.getString("ID"));
					member.setMemberName(resultset.getString("MEMBER_NAME"));
					member.setMemberSsn(resultset.getString("MEMBER_SSN"));
					member.setEmail(resultset.getString("EMAIL"));
					member.setTelNo(resultset.getString("TEL_NO"));
					member.setAddress(resultset.getString("ADDRESS"));
					member.setMobileNo(resultset.getString("MOBILE_NO"));
					member.setGender(resultset.getString("GENDER"));
					if(resultset.getString("GENDER").equals("M"))
					{
						member.setGender("����");
					}
					else{
						member.setGender("����");
					}
					member.setHomepage(resultset.getString("HOMEPAGE"));
					member.setJob(resultset.getString("JOB"));
					member.setComments(resultset.getString("COMMENTS"));
					member.setPassword(resultset.getString("PASSWORD"));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			dbUtils.closeConnection();

			request.setAttribute("member", member);

			request.getRequestDispatcher("view.jsp").forward(request, response);
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
