<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>

<%
	request.setCharacterEncoding("utf-8");		
	
	RequestDispatcher d = null;
	
	String id = request.getParameter("id");
	String loginType = request.getParameter("loginType");
		
	session.setAttribute("id", id);
	session.setAttribute("loginType", loginType);
	
	if(id.equals("admin") && loginType.equals("관리자")){
		
		d = request.getRequestDispatcher("ManagerMain.jsp");
		d.forward(request, response);
	}
	else if(id.equals("abcd") && loginType.equals("사용자")){
		d = request.getRequestDispatcher("userMain.jsp");
		d.forward(request, response);
	}
	else{
		
		//session.invalidate();// 세션 초기화
		out.println("<script>alert('입력사항을 확인하고 재입력해주세요')</script>");
		out.println("<script>history.back()</script>");
	}	
%>