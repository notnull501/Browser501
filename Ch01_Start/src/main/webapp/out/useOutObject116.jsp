<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	out.println("안녕하셔요!"+"<br>");
	System.out.println("hello");
%>
<%="hello2" %><hr>
버퍼크기:: <%=out.getBufferSize() %>   <br>
버퍼의 남은 크기: <%=out.getRemaining() %><br>
auto flush: <%=out.isAutoFlush()%><br>
<hr>
session out: <%=session.getAttribute("session") %><br>
application out: <%=application.getAttribute("application") %><br>
</body>
</html>