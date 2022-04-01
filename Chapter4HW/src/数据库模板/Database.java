package ���ݿ�ģ��;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Database {

//	public static void main(String[] args) {
//		Connection connection=getConnection();
//		System.out.println(connection);
//	}
	public static Connection getConnection() {
		Connection conn=null;									//�������ݿ����Ӷ���
		String driverName="com.mysql.jdbc.Driver";		//����������
		String dtbs="idcard";									//���ݿ�����
		String name="root";									//�û���
		String psw="203";									//����
		String url1="jdbc:mysql://localhost:3306/"+dtbs;
		String url2="?user="+name+"&password="+psw;
		String url3="&useUnicode=true&characterEncoding=UTF-8";
		String url=url1+url2+url3;	
		if (conn==null) {
			try {
				Class.forName(driverName);
				conn=DriverManager.getConnection(url);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return conn;
	}
	public static void closeAll(Connection conn, PreparedStatement stmt, ResultSet rs) {
		// �����������Ϊ�գ���ر�
		if (rs != null) {
			try {
			rs.close();
		} catch (SQLException e) {
		// TODO Auto-generated catch block
			e.printStackTrace();
			}
		}
		// ��Statement����Ϊ�գ���ر�
		if (stmt != null) {
			try {
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
		}
		// ���������Ӷ���Ϊ����ر�
		if (conn != null) {
			try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
		}
	}
}
