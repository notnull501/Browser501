package test_integrated;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/integrated_test/main.ide")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;
 	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
 	}

 	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();

 		MemberDao dao = new MemberDao();
		HttpSession session = request.getSession();	// 전에 생성된 세션 불러오기
 		String id = (String) session.getAttribute("id");				// 이전 세션에서 저장한 id 불러오기
 		ArrayList<Member> list = dao.select(id);	// id와 일치하는 회원정보를 result에 저장
 		out.println("<html><body>");
 		out.println("<h2>main.ide 페이지</h2>");
 		
 		 for (int i=0; i< list.size(); i++) {	//출력해보기
 		      Member member = list.get(i);
 		      String memid = member.getId();
 		      String name = member.getName();
 		      String address = member.getAddress();
 		      String tel = member.getTel();
 		      Date date = member.getReg_date();
 		      
 		      out.println("<b>id = </b>" +  memid + "<br>");
 		      out.println("<b>name = </b>" +  name + "<br>");
 		      out.println("<b>address = </b>" + address + "<br>");
 		      out.println("<b>tel = </b>" + tel + "<br>");
 		      out.println("<b>date = </b>" + date + "<br>");
 		      out.println("<hr>"); 		      
 		      }
 		out.println("</body></html>");
	}

}
