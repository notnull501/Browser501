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


@WebServlet("/ch10_session/study13/CartSave")
public class CartSaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String product = request.getParameter("product");
		HttpSession session = request.getSession();
		
		ArrayList<String> list =   (ArrayList<String>)session.getAttribute("product");
		if(list == null) {
			list = new ArrayList<String>();
			list.add(product);
			session.setAttribute("product",list);
		}else {
			list.add(product);
		}
		out.print("<html><body>Product추가"+"<br>");
		out.print("<a href= 'CartBasket'>장바구니보기</a>");
		out.print("</body></html>");
		
	}

}
