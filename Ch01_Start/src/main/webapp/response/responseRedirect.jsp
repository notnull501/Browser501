<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

현재 페이지는 <b>responseRedirect.jsp</b>
<%
    request.setAttribute("ids", "abcd");
	response.sendRedirect("responseResult.jsp?id=hong");
%>
redirct 밑에 있는 내용<br>
</body>
</html>