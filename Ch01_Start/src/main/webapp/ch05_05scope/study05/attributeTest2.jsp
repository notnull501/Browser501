<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("utf-8");

  String email = request.getParameter("email");
  String address = request.getParameter("address");
  String tel = request.getParameter("tel");
  
  session.setAttribute("email", email);
  session.setAttribute("address", address);
  session.setAttribute("tel", tel);
  
  String name = (String)application.getAttribute("name");
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{
		border:1px solid black;
		margin:5px;
		padding:5px;
	}
	td{
	  border:1px solid black;
	}
</style>
</head>
<body>
<h3>영역과 속성 테스트</h3>
<b><%=name %>님의 정보가 모두 저장되었습니다.</b><br>
<a href="attributeTest3.jsp">확인하러가기</a>
</body>
</html>