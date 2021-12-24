<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>암호 변경</title>
</head>
<body>
	암호를 변경했습니다.
	<br>
	<u:isLogin>
		CT:	${authUser.name }님 안녕하세요.<br>
		<a href="logout.do">[로그아웃 하기]</a>
		<a href="changePwd.do">[암호변경 하기]</a>
	</u:isLogin>
	<u:notLogin>
		<a href="join.do">[회원가입 하기]</a>
		<a href="login.do">[로그인 하기]</a>
	</u:notLogin>
</body>
</html>