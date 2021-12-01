<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String fname = request.getParameter("fname");
    	String lname = request.getParameter("lname");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
fname:<%=fname %>::: lname:<%=lname %>
</body>
</html>