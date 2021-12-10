<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
#result{
	background-color:coral;
	width:250px;
	height:100px;
	text-align:left;
	padding:10px;
	margin-top:10px;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="result">
<%

	String id = request.getParameter("id");
	
	out.println("<h3>사용자로 로그인 성공</h3>");
	out.println("<p>전고객<br>("+id+")님 환영합니다.</p>");

%>
</div>
</body>
</html>