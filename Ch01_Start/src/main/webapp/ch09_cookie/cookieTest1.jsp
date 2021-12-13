<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie c = new Cookie("name","hong");
	c.setMaxAge(600);
	response.addCookie(c);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h4>쿠키이름:: <%=c.getName() %></h4>
<h4>퀴키값: <%=c.getValue() %></h4>
<h4>쿠키의 유효시간: <%=c.getMaxAge() %></h4>
<a href="cookieTest2.jsp">쿠키값 불러오기</a>
</body>
</html>