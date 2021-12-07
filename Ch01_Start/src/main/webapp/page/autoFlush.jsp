<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page buffer="1kb" autoFlush="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
buffer:: 출력물을 모아 놓는 공간<br>
<%
	 for(int i=0; i<1000; i++)
		 out.println("1234");
%>
</body>
</html>