package ch08_usebean.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("/pinfo")
public class PersonalInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PersonalInfo obj = new PersonalInfo();
		obj.setName("홍길동");
		obj.setGender('남');
		obj.setAge(24);
		
		request.setAttribute("pinfo", obj);
		
		RequestDispatcher d = request.getRequestDispatcher("/customerInfoViewer.jsp");
		d.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
