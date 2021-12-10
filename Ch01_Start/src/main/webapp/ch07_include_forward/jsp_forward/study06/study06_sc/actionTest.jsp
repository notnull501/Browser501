<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
#result{
	backgrond-color:yellow;
	width:200px;
	height:150px;
}
</style>
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	if((id.equals("admin")) && (pw.equals("123456"))){

%>
	<jsp:forward page="managerMain.jsp"></jsp:forward>
<%
	}
%>
<%
	String id2 = request.getParameter("id");
	String pw2 = request.getParameter("pw");
	if((id2.equals("abcd")) && (pw2.equals("1234"))){

%>
	<jsp:forward page="userMain.jsp"></jsp:forward>
<%
	}
%>
</body>
</html>