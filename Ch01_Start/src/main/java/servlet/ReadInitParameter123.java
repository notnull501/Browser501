package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//123 Jsp=> Servlet

@WebServlet("/ReadInitParameter123")
public class ReadInitParameter123 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");

		PrintWriter out = response.getWriter();

		out.println("<html><body>초기화 파리미터 목록::<br>");
		out.println("::[getInitParater()]::<br>");
        //모든 사이트 방문자 공유 변수
		String param1 = getServletContext().getInitParameter("logEnabled");
		String param2 = getServletContext().getInitParameter("debugLevel");
		out.println("logEnabled: " + param1 + "<br>" + "debugLevel: " + param2 + "<hr>");

		out.println("<ul>");
		Enumeration<String> initParam = getServletContext().getInitParameterNames();
		while (initParam.hasMoreElements()) {
			String name = initParam.nextElement();
			String value = getServletContext().getInitParameter(name);
			out.println("<li>" + name + " : " + value + "</li>");
		}
		out.println("</ul>");
		out.println("</body><html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
