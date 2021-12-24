<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원제 게시판 예제</title>
</head>
<body>
	<c:if test="${!empty authUser }">
	${authUser.name }님 안녕하세요.<br>
		<a href="logout.do">[로그아웃 하기]</a>
		<a href="changePwd.do">[암호변경 하기]</a>
	</c:if>
	<c:if test="${empty authUser }">
		<a href="join.do">[회원가입 하기]</a>
		<a href="login.do">[로그인 하기]</a>
	</c:if>

</body>
</html>