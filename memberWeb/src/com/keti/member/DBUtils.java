package com.keti.member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBUtils {

//	private String url = "jdbc:mysql://192.168.1.2:3306/keti";//@ ���İ� ���̵� ��Ʈ �װ� �̿��ؼ� ����Ŭ�� ����
//	private String driverClass = "com.mysql.jdbc.Driver";//����Ŭdb������ �����ϱ� ���� ��ü
	private String url = "jdbc:mariadb://192.168.0.75:3306/ketidb";//@ ���İ� ���̵� ��Ʈ �װ� �̿��ؼ� ����Ŭ�� ����
	private String driverClass = "org.mariadb.jdbc.Driver";//����Ŭdb������ �����ϱ� ���� ��ü
	private String username = "keti";
	private String password = "keti";
	private Statement stat;
	private PreparedStatement pstat;
	private Connection conn;
	private ResultSet resultset;
	public DBUtils() {
		try {
			Class.forName(driverClass);//����̹�Ŭ������ ��ü�� ������� new��� �����ڸ��� ��ü�� ����� ����� ���� ���� �ϳ��� Ŭ����������
		} catch (ClassNotFoundException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public void openConnection() {//Ŀ�ؼ� ����

		try {
			this.conn=DriverManager.getConnection(url,username,password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void closeConnection() {//Ŀ�ؼ� Ŭ����

		try {
			if(conn!=null && conn.isClosed()){
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public boolean sendQuery(String sql) {//insert update delete select���� ���� ���� �����
		try {
			this.stat=this.conn.createStatement();
			int result = this.stat.executeUpdate(sql);//�Է°Ǽ��� int�� ����
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

	public ResultSet selectQuery(String sql) {//��ȸ�۾� ����Ÿ���� Resultset�� �༭ �����͸� �����
		
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
