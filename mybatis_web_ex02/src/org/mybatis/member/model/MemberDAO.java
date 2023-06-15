package org.mybatis.member.model;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MemberDAO {
	 	InputStream inputStream = null;
	    SqlSessionFactory sqlSessionFactory = null;
	    SqlSession session = null;
	    
	public MemberDAO() {
	      try {
	         inputStream = Resources.getResourceAsStream("org/mybatis/example/mybatis-config.xml");
	         sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
	         session = sqlSessionFactory.openSession(true);
	      } catch (IOException e) {
	         e.printStackTrace();
	      }
	   }

	   public Member selectOne(int id) {
	      return session.selectOne("BlogMapper.selectBlog", id);
	   }
	   
	   public Member selectOne(Member blog) {
	      return session.selectOne("BlogMapper.selectBlog", blog);
	   }
	   
	   public List<Member> selectAll() {
	      return session.selectList("BlogMapper.selectAll");
	   }
	   
	   public void insert(Member blog) {
	      session.insert("BlogMapper.insertBlog", blog);
	      session.commit();
	   }
	   
	   public void update(Member blog) {
	      session.update("BlogMapper.updateBlog", blog);
	      session.commit();
	   }
	   
	   public void delete(Member blog) {
	      session.delete("BlogMapper.deleteBlog", blog);
	      session.commit();
	   }
	   
	   public List<Member> selectByTitle(Member newBlog) {
	      return session.selectList("BlogMapper.selectByTitle", newBlog);
	   }
	   
	   public static void main(String[] args) {
		   MemberDAO dao = new MemberDAO();
	      
//	      Member member = dao.selectOne(100); //(1)방법 :숫자 넣으면 찾고잇는 숫자잇는지 없는지 맨윗칸에 알려줌.
//	      System.out.println(member);
//	      
//	      Member member = dao.selectOne(new Member(101)); //(2)방법 
//	      System.out.println(member);
	//------------------------------------------      
	      Member bbb = new Member(0, "TEST3", "입력 테스트", "테스트 내용2");
	     dao.insert(bbb);
	      
//	      Member newBlog = new Member(107, "SEO", "블로그 테스트3", "테스트 내용3");
//	      dao.update(newBlog);
	      
//	      Member newBlog = new Member(100, null, null, null);
//	      dao.delete(newBlog);
////	      
//	      Member newBlog = new Member(0, null, "테스트", null);
//		    List<Blog> list = dao.selectByTitle(newBlog);
	      List<Member> list = dao.selectAll();
	      
	      for(Member b : list) {
	         System.out.println(b);
	     }
	   }

	   
	}