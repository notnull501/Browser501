package study;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//URL Mapping 방법1: Annotation 방식
@WebServlet("/study02/Sport")
public class Sprots_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		String[] sports = req.getParameterValues("sports");
		String sex = req.getParameter("sex");
		
		PrintWriter out = resp.getWriter();
		out.println("<html><body>");
		for(String s : sports)
			out.println("좋아하는 운동:: "+s+"<br>");
		out.println("성별: "+sex+"<br>");
		out.println("</body></html>");
	}

}
