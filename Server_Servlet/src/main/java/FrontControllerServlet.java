

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("*.dos")
public class FrontControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Command Pattern
		
		String requestURI = request.getRequestURI();
		System.out.println("requestURI():: "+requestURI);
		String contextPath = request.getContextPath();
		System.out.println("getContextPath():: "+contextPath);
		String command = requestURI.substring(contextPath.length());
		System.out.println("command:: "+command);
	}

}
