package com.keti.member;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RealModifyServlet
 */
public class RealModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RealModifyServlet() {
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
		String memberSession = (String)request.getSession().getAttribute("id");
		if(memberSession==null){
			request.getRequestDispatcher("login.jsp").forward(request, response);
			return;
		}
		else{
			String memberNo = request.getParameter("no");
			String memberId = request.getParameter("id");
			String memberName = request.getParameter("name");
			String memberGender = request.getParameter("gender");
			String memberEmail = request.getParameter("email");
			String memberTel = request.getParameter("tel");
			String memberAddress = request.getParameter("address");
			String memberPassword = request.getParameter("passwd");
			String memberJumin = request.getParameter("jumin1")+"-"+request.getParameter("jumin2");
			String memberMobile = request.getParameter("mobile");
			String memberJob = request.getParameter("job");
			String memberComments = request.getParameter("comments");
			String memberHomepage = request.getParameter("homepage");

			int max=0;

			DBUtils dbUtils = new DBUtils();
			dbUtils.openConnection();
			String sql = "select max(no) as maxno from javamodeling_member";

			ResultSet resultset = dbUtils.selectQuery(sql);
			try {
				if(resultset.next())
					max = resultset.getBigDecimal("maxno").intValue();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			max= max+1;


			//String sql = "insert into javamodeling_member(ID,MEMBER_NAME,TEL_NO,EMAIL,GENDER,PASSWORD) VALUES('Kyunghwa','KyunghwaYoo','01037701892','Kyunghwa@keti.com','MEN','123456')";
			sql = "update javamodeling_member set TEL_NO='"+memberTel+"',EMAIL='"+memberEmail+"',"
					+ "GENDER='"+memberGender+"',PASSWORD='"+memberPassword+"',MOBILE_NO='"+memberMobile+"',JOB='"+memberJob+"',"
					+ "HOMEPAGE='"+memberHomepage+"',"
					+ "COMMENTS='"+memberComments+"',ADDRESS='"+memberAddress+"' where NO=" +memberNo+"";


			Boolean result = dbUtils.sendQuery(sql);

			//sql = "delete from javamodeling_member where no>20";
			//result = dbUtils.sendQuery(sql);

			if(result==true)
				response.sendRedirect("memberlist.servlet");
			else
				response.sendRedirect("failure.jsp");

		}
	}
}

