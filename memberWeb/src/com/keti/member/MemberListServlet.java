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
public class MemberListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				
		DBUtils dbUtils = new DBUtils();
		dbUtils.openConnection();
		String sql = "select * from javamodeling_member order by NO asc";
		ResultSet resultset = dbUtils.selectQuery(sql);
		
		List<Member> listMember = new ArrayList<>();
		
		try {
			while(resultset.next()){
				Member member = new Member();
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
					member.setGender("남성");
				}
				else{
					member.setGender("여성");
				}
				member.setHomepage(resultset.getString("HOMEPAGE"));
				member.setJob(resultset.getString("JOB"));
				member.setComments(resultset.getString("COMMENTS"));
				member.setPassword(resultset.getString("PASSWORD"));

				listMember.add(member);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		dbUtils.closeConnection();
		
		request.setAttribute("memberlist", listMember);
		if(request.getSession().getAttribute("id") == null){
			request.setAttribute("session", "false");
		}
		else{
			request.setAttribute("session", "true");
		}
		request.getRequestDispatcher("memberlist.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
