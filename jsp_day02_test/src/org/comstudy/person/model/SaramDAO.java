package org.comstudy.person.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.comstudy.dbcp.JdbcUtil;

public class SaramDAO {
	
	Connection conn;
	PreparedStatement stmt;
	ResultSet rs;

	public List<SaramDTO> selectAll(){
		List<SaramDTO> list = new ArrayList();
		conn = JdbcUtil.getConnection();
		stmt = conn.prepareStatement(SELECT_ALL);
		rs = stmt.executeQuery();
		while(rs.next()) {
			int seq = rs.getString("seq");
			String name = rs.getString("name");
            String id = rs.getString("id");
            int age = rs.getInt("age");
            list.add(new PersonDTO(seq, id, name, age));
		}
		return list;
	}
}
