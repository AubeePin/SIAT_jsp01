<<<<<<< HEAD
package org.mingyeong;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		out.print("<!DOCTYPE HTML>");
		out.print("<HTML>");
		out.print("<BODY>");
		out.print("<h1>hello word!</h1>");
		out.print("</BODY>");
		out.print("</HTML>");
		out.close();
	}
}
=======
package org.mingyeong;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//한글나오게 하는 설정
		resp.setContentType("text/html; charset=UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		PrintWriter out = resp.getWriter();
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.print("<body>");
		out.print("<h1>파닭</h1>");
		out.print("</body>");
		out.print("</html>");
		out.close();
	}
}
>>>>>>> 1d993694650aab931775d892876beed432f71b42
