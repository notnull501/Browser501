package test_integrated;	//임시로 test라는 패키지에 위치

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/integrated_test/join.ide")	
//상세한 경로는 파일 위치에 따라 조절 필요.. 
public class join extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
 		request.setCharacterEncoding("utf-8");
 		response.setContentType("text/html; charset=utf-8");
 		
		String id = request.getParameter("id");
		String password = request.getParameter("password");

		MemberDao dao = new MemberDao(); // 사용을 위해 객체 생성
		int result = dao.LoginCheck(id,password);// MemberDao 내의 Logincheck()후 result 저장
		System.out.println("result = " + result);					
		
		HttpSession session = request.getSession();	
		if(result == 1){	
			//Logincheck() 결과 DB에 일치하는 id와 password 조합이 존재하는 경우에만	
			session.setAttribute("id", id);		// 세션에 해당 id를 저장
		}	
		request.setAttribute("result", result);	// 전송할 result에 LoginCheck() 결과값을 그대로 저장
		RequestDispatcher d = request.getRequestDispatcher("login.jsp");
		d.forward(request, response);
	}

}
