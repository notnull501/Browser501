package ch10_session;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/ch10_session/study13/CartDelete")
public class CartDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.print("<html><body>장바구니 비웠음!!"+"<br>");
		
		HttpSession session = request.getSession(false);
		if(session != null) {
			session.invalidate();
		}else {
			out.println("세션이 없음"+"<br>");
		}
				
		out.print("<a href='product.html'>상품선택페이지</a><br>");
		out.print("</body></html>");
	}

}
