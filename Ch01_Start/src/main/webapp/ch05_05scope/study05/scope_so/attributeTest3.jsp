<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table{
	border:1px solid black;
	width:260px;
	heigth:100px;
	text-align:left;
}
th{
	border:1px solid black;
}
tr{
	border:1px solid black;
}
</style>
</head>
<body>
	<h3>영역과 속성 테스트</h3>
	<table>
		<tr>
		<th colspan="2">Application 영역에 저장된 내용들</th>
		</tr>
		<tr>
		<th>이름</th><th><%=application.getAttribute("name") %></th>
		</tr>
		<tr>
		<th>아이디</th><th><%=application.getAttribute("id") %></th>
		</tr>
	</table><br>
	<table>
		<tr>
			<th colspan="2">Session 영역에 저장된 내용들</th>
		</tr>
		<tr>
			<th>address</th><th><%=session.getAttribute("addr") %></th>
		</tr>
		<tr>
			<th>tel</th><th><%=session.getAttribute("tel") %></th>
		</tr>
		<tr>
			<th>email</th><th><%=session.getAttribute("email") %></th>
		</tr>
	</table>
</body>
</html>