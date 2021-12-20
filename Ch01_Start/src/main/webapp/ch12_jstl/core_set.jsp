<%@page import="java.util.HashMap"%>
<%@page import="ch12_jstl.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Member m = new Member();
	HashMap<String, String> pref = new HashMap<>();
%>
<c:set var="member" value="<%=m %>"/>
<%-- <c:remove var="member"/> --%>
<c:set target="${member }" property="name" value="홍길동"></c:set>

<c:set var="pref" value="<%=pref %>"></c:set>
<c:set var="favoriateColor" value="#{pref.color }"></c:set>

회원이름:: ${member.name }<br>
좋아하는 색1: ${favoriateColor }<br>

<c:set target="${pref }" property="color" value="red"></c:set>
설정이후 좋아하는 색2: ${favoriateColor }<br>
</body>
</html>