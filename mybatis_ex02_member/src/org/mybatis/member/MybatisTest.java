package org.mybatis.member;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.mybatis.member.model.Member;

public class MybatisTest {

	public static void main(String[] args) throws IOException {
		String resource = "org/mybatis/member/mybatis-config.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

		try (SqlSession session = sqlSessionFactory.openSession()) {
			  Member memb = session.selectOne("MemberMapper.selectMember", 1);
			  System.out.println(memb);
			}
	}

}
