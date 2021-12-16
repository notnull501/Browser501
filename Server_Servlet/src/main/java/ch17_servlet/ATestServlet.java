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

//http://localhost:8080/Server_Servlet/ATest   => ATestServlet
//http://localhost:8080/Server_Servlet/test   => CTestServlet
//http://localhost:8080/Server_Servlet/test/BTest   => BTestServlet

//http://localhost:8080/Server_Servlet/   => DTestServlet
//http://localhost:8080/Server_Servlet/xxx   => DTestServlet
//http://localhost:8080/Server_Servlet/kkk   => DTestServlet

//(1)Directory Pattern
@WebServlet("/ATest")
public class ATestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ATestServlet");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
