package org.mingyeong.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.mingyeong.dbcp.JdbcUtil;

public class SaramDAO {
	final String SELECT_ALL = "SELECT * FROM SARAM";
	final String SELECT_ONE = "SELECT * FROM SARAM WHERE SEQ=?";
	final String INSERT = "INSERT INTO SARAM(SEQ, NAME, AGE, JOB, ADDR, EMAIL,PHONE) VALUES(?, ?, ?, ?, ?, ?, ?)";
	final String UPDATE = "UPDATE SARAM SET JOB=?,ADDR=?,EMAIL=?,PHONE=? WHERE SEQ=?";
	final String DELETE = "WHERE SEQ=?";
	
	Connection conn;
	PreparedStatement stmt;
	ResultSet rs;
	
	//CRUD가 되도록 한다.	
	public List<SaramDTO> selectAll(){
		List<SaramDTO> list = new ArrayList<SaramDTO>();
		conn = JdbcUtil.getConnection();
		try {
			stmt = conn.prepareStatement(SELECT_ALL);
			rs = stmt.executeQuery();
			while(rs.next()) {
				int seq = rs.getInt("seq");
				String name = rs.getString("name");
				int age = rs.getInt("age");
				String job = rs.getString("job");
				String addr = rs.getString("addr");
				String email = rs.getString("email");
				String phone = rs.getString("phone");
				list.add(new SaramDTO(seq, name, age, job ,addr, email, phone));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn, stmt, rs);
		}
		return list  ;
	}
	public SaramDTO selectOne(SaramDTO dto) {
		SaramDTO saram = null;
		conn = JdbcUtil.getConnection();
		try {
			stmt = conn.prepareStatement(SELECT_ONE);
			stmt.setInt(1, dto.getSeq());
			rs = stmt.executeQuery();
			while(rs.next()) {
				int seq = rs.getInt("seq");
				String name = rs.getString("name");
				int age = rs.getInt("age");
				String job = rs.getString("job");
				String addr = rs.getString("addr");
				String email = rs.getString("email");
				String phone = rs.getString("phone");
				saram = new SaramDTO(seq, name, age, job ,addr, email, phone);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn, stmt, rs);
		}
		return saram;
	}
	
	private SaramDTO findBySeq(int seq) {
		SaramDTO saram = null;
		conn = JdbcUtil.getConnection();
		try {
			stmt = conn.prepareStatement(SELECT_ONE);
			stmt.setInt(1, seq);
			rs = stmt.executeQuery();
			if(rs.next()) {
				
				String name = rs.getString("name");
				int age = rs.getInt("age");
				String job = rs.getString("job");
				String addr = rs.getString("addr");
				String email = rs.getString("email");
				String phone = rs.getString("phone");
				saram = new SaramDTO(seq, name, age, job ,addr, email, phone);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn, stmt, rs);
		}
		return saram;
	}
	public void insert(SaramDTO dto) {
		conn = JdbcUtil.getConnection();
		try {
			stmt=conn.prepareStatement(INSERT);
			stmt.setInt(1, dto.getSeq());
			stmt.setString(2, dto.getName());
			stmt.setInt(3, dto.getAge());
			stmt.setString(4, dto.getJob());
			stmt.setString(5, dto.getAddr());
			stmt.setString(6, dto.getEmail());
			stmt.setString(7, dto.getPhone());
			int cnt = stmt.executeUpdate();
			if(cnt>0) {
			System.out.println("입력 완료!");
			conn.commit();
			}else {
			System.out.println("입력 실패!");
			conn.rollback();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
		JdbcUtil.close(conn, stmt, rs);
	}
}
	public void update(SaramDTO dto) {
		conn = JdbcUtil.getConnection();
		try {
			stmt=conn.prepareStatement(UPDATE);
			stmt.setInt(1, dto.getSeq());
			stmt.setString(2, dto.getName());
			stmt.setInt(3, dto.getAge());
			stmt.setString(4, dto.getJob());
			stmt.setString(5, dto.getAddr());
			stmt.setString(6, dto.getEmail());
			stmt.setString(7, dto.getPhone());
			int cnt = stmt.executeUpdate();
			if(cnt>0) {
			System.out.println("수정 완료!");
			conn.commit();
			}else {
			System.out.println("수정 실패!");
			conn.rollback();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
		JdbcUtil.close(conn, stmt, rs);
	}
}

	public void delete(SaramDTO dto) {
		conn = JdbcUtil.getConnection();
		try {
			stmt=conn.prepareStatement(DELETE);
			stmt.setInt(1, dto.getSeq());
			int cnt = stmt.executeUpdate();
			if(cnt>0) {
			System.out.println("삭제 완료!");
			conn.commit();
			}else {
			System.out.println("삭제 실패!");
			conn.rollback();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
		JdbcUtil.close(conn, stmt, rs);
	}
}

}	