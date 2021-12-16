<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL::Core</title>
</head>
<body>
<h4>JSTL Core 라이브러리 실습1(배열저장:1~10)</h4>
<%
	int[] num ={1,2,3,4,5,6,7,8,9,10};
	request.setAttribute("myArray", num);
	out.println();
%>
<c:forEach var="n" items="${myArray }">
	<c:out value="${n }"></c:out>
</c:forEach>
<br>
<c:forEach var="n" items="${myArray }" begin="0" end="6">
	<c:out value="${n }"></c:out>
</c:forEach>

<hr>
<h4>JSTL Core 라이브러리 실습2(ArrayList)</h4>
<%
ArrayList<String> list = new ArrayList<String>();
list.add("홍길동1");
list.add("홍길동2");
list.add("홍길동3");
request.setAttribute("name", list);
%>
<c:forEach var="n" items="${name}">
	<c:out value="${n }"></c:out>
</c:forEach>
<br>
<hr>
<h4>JSTL Core 라이브러리 실습3(String)</h4>
<%
	String str ="A,B,C,D";
	request.setAttribute("data", str);
%>
<c:forTokens var="n" items="${data}" delims=",">
	<c:out value="${n }"></c:out>
</c:forTokens>




</body>
</html>