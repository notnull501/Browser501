<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC::View</title>
</head>
<body>
로그인 성공::<br>
Jsp:: <%= session.getAttribute("ids") %><br>
JSP:: <%= session.getAttribute("pws") %><br>
EL:: ${ids }<br>
EL:: ${pws} <br>
<hr>
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");
%>
id:<%=id %>:: pw:<%=pw %><br>
</body>
</html>