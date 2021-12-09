<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<hr>
에러 타입::<%=exception.getClass().getName()%><br>
에러 메시지 : <b><%=exception.getMessage() %></b><hr>
<img src="jsp기본객체.png">
</body>
</html>