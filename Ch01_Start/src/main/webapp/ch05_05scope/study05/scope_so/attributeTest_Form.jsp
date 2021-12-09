<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="attributeTest1.jsp">
	<table>
		<tr>
		<th colspan="2">Application 영역에 저장할 내용들</th>
		</tr>
		<tr>
		<th>이름</th><th><input type="text" name="name" id="name"></th>
		</tr>
		<tr>
		<th>아이디</th><th><input type="text" name="id" id="id"></th>
		</tr>
		<tr>
		<th colspan="2"><input type="submit" value="전송"></th>
		</tr>
	</table></form>

</body>
</html>