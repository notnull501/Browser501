<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginForm</title>
<style>
	input{ background:pink}
	.log{background-color: yellow;}
	.in{background-color: skyblue}
</style>
</head>
<body>
<form action="join.ide" method="post">
	<table border=1>
		<tr>
		<td colspan =2 align="center" class="log"><b>로그인</b></td>
		</tr>
		<tr>
		<td width="80px" align="center" class="in">아이디</td><td><input type="text" name="id" required autofocus></td>
		</tr>
		<tr>
		<td width="80px" align="center" class="in">암호</td><td><input type="password" name="password" required></td>
		</tr>
		<tr>
		<td colspan =2 align="center" class="in"><input type="submit" value="확인"></td>
		</tr>
	</table>
	</form>
</body>
</html>