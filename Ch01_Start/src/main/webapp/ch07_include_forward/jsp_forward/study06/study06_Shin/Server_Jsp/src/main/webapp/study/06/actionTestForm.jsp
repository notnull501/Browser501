<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환영합니다.</title>
</head>
<body>
	<form action="actionTest.jsp" method="post">
		<label for="id">아이디 :<span>
		<input type="text" name="id" placeholder="id를 입력하세요." required="required"></span></label><br> 
		<label for="password">암호:<span>
		<input type="password" name="password" placeholder="비밀번호를 입력하세요." required="required"></span></label><br> 
		<input type="radio" name="account" value="user" checked="checked">사용자
		<input type="radio" name="account" value="admin">관리자<br>
		<input type="submit" value="로그인">
	</form>
</body>
</html>