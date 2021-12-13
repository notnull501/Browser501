<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP:forward(179)</title>
</head>
<body>
<img src="jsp_forward.jpg"><br>
이 페이지는  from.jsp페이지 입니다1.<br>
<%
	request.setAttribute("number", "1234");
%>
jsp에서 사용하는 forward<br>
<jsp:forward page="to.jsp?name=hong">
	<jsp:param value="abcd" name="id"/>
</jsp:forward>

이 페이지는  from.jsp페이지 입니다2.<br>
</body>
</html>