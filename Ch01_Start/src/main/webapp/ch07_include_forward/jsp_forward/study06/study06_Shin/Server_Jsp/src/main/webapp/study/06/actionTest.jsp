<%@page import="org.apache.tomcat.util.descriptor.web.ErrorPage"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

</head>
<body>
<% 	
	request.setCharacterEncoding("utf-8");

	request.setAttribute("id", "id");
	request.setAttribute("password", "password");
	String account = request.getParameter("account");
	
	if (account.equals("user")) {
		RequestDispatcher user =  request.getRequestDispatcher("userMain.jsp");
		user.forward(request, response);
	} else if(account.equals("admin")) {
		RequestDispatcher admin = request.getRequestDispatcher("managerMain.jsp");
		admin.forward(request, response);
	} else {
		out.println("<script>alert('로그인에 실패하였습니다.'); history.back();</script>");
	}
%>
</body>
</html>