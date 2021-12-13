<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    String id2 = request.getParameter("id2");
    String pw2 = request.getParameter("pw2");
    String id_attr =  (String)session.getAttribute("id");
    
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	out.println("id2: "+id2+" : pw2: "+pw2);
	out.println("id_attr = "+id_attr);
	out.println("req = "+(String)request.getAttribute("req"));
	
	session.removeAttribute("id");
	
%>
<h4>로그아웃 되었습니다.</h4>
<a href="sessionLogin.jsp">로그인페이지로 이동</a>
</body>
</html>