<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC model2 :::View(526)</title>
</head>
<body>
URL:: http://localhost:8080/Server_Servlet/simple<br>
type::date한 경우 => 날짜 출력<hr>
결과(JSP-attribute):: <%=request.getAttribute("result") %><br> 
결과(EL-attribute)::  ${result }         <hr> 
결과2(JSP-parameter)::<%=request.getParameter("type") %> <br>
결과2(EL-parameter):: ${param.type }<br>

</body>
</html>