<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String name1 = request.getParameter("fname");
    	String name2 = request.getParameter("lname");
    	
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
fname: <%=name1 %>::: lname:<%=name2 %>
</body>
</html>