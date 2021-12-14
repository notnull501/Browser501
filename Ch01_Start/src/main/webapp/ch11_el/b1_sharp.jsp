<%@page import="ch11_el.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>252</title>
</head>
<body>
<%
	Member m = new Member();
	m.setName("이름1");
%>
<c:set var="m" value="<%=m %>"></c:set>
<c:set var="name" value="#{m.name }"></c:set>
<%
	m.setName("이름2");
%>
${name }<br>
\#{m.name}: 실제로 값이 필요한 시점에 값을 계산(Deffered Expression)
</body>
</html>