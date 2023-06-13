package org.mingyeong.dbcp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.spi.DirStateFactory.Result;

public class JdbcUtil {
	public static Connection getConnection() {
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String user = "mingyeong";
		String password = "mingyeong";
		
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			System.out.println("드라이버 검색 성공");
			Connection conn = DriverManager.getConnection(url, user, password);
			return conn;
		} catch (ClassNotFoundException e) {
			System.err.println("드라이버 검색 실패");
			e.printStackTrace();
		} catch (SQLException e) {
			System.err.println("데이터베이스 접속 실패");
		}
		return null;
	}
	
	public static void close(Connection obj) {
		if(obj != null) {
			try {
				obj.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	public static void close(Statement obj) {
		if(obj != null) {
			try {
				obj.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	public static void close(ResultSet obj) {
		if(obj != null) {
			try {
				obj.close();
			} catch (SQLException e) {
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
