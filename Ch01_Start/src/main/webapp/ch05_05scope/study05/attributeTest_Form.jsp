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
		margin:5px;
		padding:5px;
	}
	td{
	  border:1px solid black;
	}
</style>
</head>
<body>
<form action="attributeTest1.jsp" method="post">
	<table >
		<tr>
			<td colspan="2">application scope에 저장할 내용들</td>
		</tr>
		<tr>
			<td>이름</td><td><input type="text" name="name" class="name"></td>
		</tr>
		<tr>
			<td>아이디</td><td><input type="text" name="id" class="id"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="전송"></td>
		</tr>
	</table>
</form>
</body>
</html>