<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attribute3</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

	<table>
		<tr><td colspan="2">Application 영역에 저장된 내용들</td></tr>
		<tr>
			<td><label>이름</label></td>
			<%-- 가능한 표현
			<td><%=application.getAttribute("id") %></td> --%>
			<td>${name }</td>
		</tr>
		<tr>
			<td>아이디</td>
			<td>${id }</td>			 		
	</table>
<br>		
	<table>
		<tr><td colspan="2">Session 영역에 저장된 내용들</td></tr>
		<tr>
			<td><label>email주소</label></td>
			<td>${email }</td>
			<%-- 가능한 표현
			<td><%=session.getAttribute("email") %></td> --%>
		</tr>
		<tr>
			<td>집주소</td>
			<td>${address }</td>
		<tr>
		<tr>
			<td>전화번호</td>
			<td>${pnumber }</td>
		
	</table>
<a href="attribute_Form.jsp">첫 페이지로 이동</a>
</body>
</html>