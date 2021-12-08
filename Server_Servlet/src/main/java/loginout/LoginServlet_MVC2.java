package loginout;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//MVC:: Controller
@WebServlet("/login/login_mvc2")
public class LoginServlet_MVC2 extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		PrintWriter out = response.getWriter();
		
		if(id.equals("admin") && pw.equals("1234")) {
			//세션 만들기
			HttpSession session = request.getSession();
			//만들어진 세션에 이름과 데이터 설정하기
		    session.setAttribute("ids", id);
		    session.setAttribute("pws", pw);
		    
		 	RequestDispatcher d = request.getRequestDispatcher("../loginout/logout_mvc2.jsp");
		    d.forward(request, response);
		}else {
			out.println("<script>");
			out.println("alert('아이디나 비밀번호가 일치하지 않습니다.')");
			out.println("history.back()");
			out.println("</script>");
		}
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
