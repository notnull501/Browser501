<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ page errorPage= "/error/viewErrorMessage.jsp" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
name Parameter1:: <%=request.getParameter("name").toUpperCase() %>
<hr>
<%
	try{
		out.println("name: "+request.getParameter("name").toUpperCase());
	}catch(Exception e){
		out.println("name Parameter가 올바르지 않습니다.");
	}
%>
</body>
</html>