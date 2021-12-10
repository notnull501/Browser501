<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directive Incldue</title>
</head>
<body>
%@ include file를 사용할 경우 :: 공용 변수 사용시<br>
<img src="directive_include.jpg"><br>

<%
	int number = 10;
%>
<%@ include file="includee.jspf" %>

공통변수 DATAFOLDER= "<%=dataFolder %>"
</body>
</html>