<%@page import="ch11_el.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name="홍길동";
	request.setAttribute("name", name);
	
	//member객체에  id,name 값을 넣어주고 속성에 저장하기
	//forward를 통한 전달
	Member m = new Member();
	m.setId("abcd");
	m.setName("hong");
	request.setAttribute("m", m);
%>
<jsp:forward page="el_forward2.jsp"></jsp:forward>

</body>
</html>