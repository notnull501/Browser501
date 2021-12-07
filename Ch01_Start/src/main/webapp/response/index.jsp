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
String id=request.getParameter("memberid");
out.println("id: "+id);

String name=request.getParameter("name");
out.println("name: "+name);
%>
</body>
</html>