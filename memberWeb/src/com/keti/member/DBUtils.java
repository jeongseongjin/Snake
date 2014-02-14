package com.keti.member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBUtils {

//	private String url = "jdbc:mysql://192.168.1.2:3306/keti";//@ 이후가 아이디 포트 그걸 이용해서 오라클에 접속
//	private String driverClass = "com.mysql.jdbc.Driver";//오라클db정보를 저장하기 위한 객체
	private String url = "jdbc:mariadb://192.168.0.75:3306/ketidb";//@ 이후가 아이디 포트 그걸 이용해서 오라클에 접속
	private String driverClass = "org.mariadb.jdbc.Driver";//오라클db정보를 저장하기 위한 객체
	private String username = "keti";
	private String password = "keti";
	private Statement stat;
	private PreparedStatement pstat;
	private Connection conn;
	private ResultSet resultset;
	public DBUtils() {
		try {
			Class.forName(driverClass);//드라이버클래스를 객체로 만들어줌 new라는 연산자말고도 객체를 만드는 방법이 있음 그중 하나가 클래스포네임
		} catch (ClassNotFoundException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public void openConnection() {//커넥션 오픈

		try {
			this.conn=DriverManager.getConnection(url,username,password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void closeConnection() {//커넥션 클로즈

		try {
			if(conn!=null && conn.isClosed()){
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public boolean sendQuery(String sql) {//insert update delete select문을 가장 많이 사용함
		try {
			this.stat=this.conn.createStatement();
			int result = this.stat.executeUpdate(sql);//입력건수를 int로 리턴
			if(result>0){
				return true;
			}else{
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	public ResultSet selectQuery(String sql) {//조회작업 리턴타입을 Resultset를 줘서 데이터를 담아줌
		
		try {
			this.pstat=this.conn.prepareStatement(sql);
			this.resultset=this.pstat.executeQuery();
			
			return this.resultset;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
}
