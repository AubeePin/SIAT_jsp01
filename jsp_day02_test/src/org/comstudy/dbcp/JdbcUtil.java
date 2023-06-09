package org.comstudy.dbcp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JdbcUtil {
	public static Connection getConnection() {
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String user = "comstudy";
		String password = "comstudy";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			System.out.println("드라이버 검색 성공");
			Connection conn = DriverManager.getConnection(url, user, password);
			return conn;
			} catch (ClassNotFoundException e) {
			System.out.println("드라이버 검색 실패");
			} catch (SQLException e) {
				System.out.println("DB접속 실패");
			}
			 return null;
		}
		public static void close(Connection obj) {
			if (obj != null) {
				try {
					obj.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		public static void close(Statement obj) {
			if (obj != null) {
				try {
					obj.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		public static void close(ResultSet obj) {//오브젝은 변수명임 아무나 넣어도되는.
			if (obj != null) {
				try {
					obj.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
	
	public static void close(Connection conn, Statement stmt, ResultSet rs) {
		close(conn);
		close(stmt);
		close(rs);
		
	}
}
//JDBC 데이터베이스랑 자바랑 연결했다가 끊어주는 역할 유틸!
//커넥션 해준걸 close하는게 데이터베이스 유틸!
