package study;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//URL Mapping 방법2: web.xml 방식
//@WebServlet("/study02/SportXml")
public class Sprots_Servlet_Xml extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		String[] sports = req.getParameterValues("sports");
		String sex = req.getParameter("sex");
		
		//MVC model2 작성하기(sports_mvc2.jsp)
		HttpSession sess = req.getSession();
		sess.setAttribute("s1", sports);
		sess.setAttribute("s2", sex);
		//Servlet에서 forward
		RequestDispatcher d = req.getRequestDispatcher("sport_mvc2.jsp?id=hong");
		d.forward(req, resp);//목적파일 출력
		
		//MVC model1--실행결과가 출력되지 않음(forward)
		PrintWriter out = resp.getWriter();
		out.println("<html><body>");
		for(String s : sports)
			out.println("좋아하는 운동:: "+s+"<br>");
		out.println("성별: "+sex+"<br>");
		out.println("</body></html>");
	}

}
