package ch10_session;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//Servlet~Servlet으로 데이터 전송

//@WebServlet("/ch10_session/study10/result")
public class ResultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
		
		String animal = request.getParameter("animal");
		
		HttpSession session = request.getSession();
		String food = (String) session.getAttribute("f");
		session.invalidate();
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.print("<html><head><title>성격테스트</title></head><body>");
		out.print("<h3>좋아하는 동물은?</h3>");
		out.printf("당신은 %s와 %s를 좋아하는 성격입니다.",food, animal);
		out.print("</body></html>");
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
