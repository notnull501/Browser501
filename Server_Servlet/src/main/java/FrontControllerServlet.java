

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
		
		//requestURI():: /Server_Servlet/insert.dos
		//getContextPath():: /Server_Servlet
		//command:: /insert.dos
		
		String requestURI = request.getRequestURI();
		System.out.println("requestURI():: "+requestURI);
		String contextPath = request.getContextPath();
		System.out.println("getContextPath():: "+contextPath);
		String command = requestURI.substring(contextPath.length());
		System.out.println("command:: "+command);
		
		if(command.equals("/insert.dos")) {
			System.out.println("DB에 데이터 입력");
			
			
			
			
			
		}else if(command.equals("/delete.dos")) {
			System.out.println("DB에 데이터 삭제");
		}else if(command.equals("/update.dos")) {
			System.out.println("DB에 데이터 수정");
		}else {
			System.out.println("DB에 데이터 조회");//  /insert.dos
		}
	}

}
