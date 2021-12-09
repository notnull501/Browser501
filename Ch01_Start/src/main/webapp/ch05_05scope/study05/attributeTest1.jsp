<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("utf-8");

  String name = request.getParameter("name");
  String id = request.getParameter("id");
  
  application.setAttribute("name", name);
  application.setAttribute("id", id);
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
<b><%=name %>님 반갑습니다.<br>
   ${param.name }님의 아이디는 <%=id %>입니다.
</b><br>
<form action="attributeTest2.jsp" method="post">
	<table border="1">
		<tr>
			<td colspan="2">session scope에 저장할 내용들</td>
		</tr>
		<tr>
			<td>email주소</td><td><input type="text" name="email" class="email"></td>
		</tr>
		<tr>
			<td>집주소</td><td><input type="text" name="address" class="address"></td>
		</tr>
		<tr>
			<td>전화번호</td><td><input type="text" name="tel" class="tel"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="전송"></td>
		</tr>
	</table>
</form>
</body>
</html>