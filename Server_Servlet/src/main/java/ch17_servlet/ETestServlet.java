package ch17_servlet;
//514
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//URL Pattern Mapping Rule
//(1) Directory Pattern
//(2) Extension(확장자) Pattern

//http://localhost:8080/Server_Servlet/xxx.do => ETestServlet
//http://localhost:8080/Server_Servlet/test/a.nhn => GTestServlet
//http://localhost:8080/Server_Servlet/xyz/a.do => ETestServlet
//http://localhost:8080/Server_Servlet/xyz/kk.go => FTestServlet
//http://localhost:8080/Server_Servlet/my/ss.go => FTestServlet
//(2) Extension(확장자) Pattern
@WebServlet("*.do")
public class ETestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ETestServlet");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
