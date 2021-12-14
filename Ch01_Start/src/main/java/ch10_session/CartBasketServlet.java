package ch10_session;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/ch10_session/study13/CartBasket")
public class CartBasketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("<html><body>장바구니 리스트"+"<br>");
		//세션이 있는 상태
		HttpSession session = request.getSession(false);
		session.setMaxInactiveInterval(200);
		if(session != null) {
		  ArrayList<String> list = (ArrayList<String>)session.getAttribute("product");	
			out.println("상품: "+list+"<br>");
		}else {
			out.println("세션 없음"+"<br>");
		}
		out.print("<a href='product.html'>상품선택페이지</a><br>");
		out.print("<a href= 'CartDelete'>장바구니비우기</a>");
		out.print("</body></html>");
		
		
		
	}

}
