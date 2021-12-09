<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attribute Form</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<form action="attributeTest1.jsp" method="post">
		<table>
		<tr><td colspan="2">Application 영역에 저장할 내용들</td></tr>
		<tr>
			<td><label>이름</label></td>
			<td><input type= "text" id="name" name="name" value="홍길동"></td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><input type= "text" id="id" name="id" value="gildong001"></td>
		<tr>
			<td colspan="2"><input type="submit" value="전송"></td>
		</tr>
		
		</table>
	</form>
</body>
</html>