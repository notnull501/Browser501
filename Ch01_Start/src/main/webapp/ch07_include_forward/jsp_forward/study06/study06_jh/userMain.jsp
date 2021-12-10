<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
	function logout(){
		location.href="logout.jsp";
	}
</script>
<body>
<h3>${sessionScope.loginType}로 로그인 성공</h3>
(이름인 것 같은데) ${sessionScope.id}님 환영합니다.<br><br>
<button id="btn" onclick="logout();">로그아웃</button>
</body>
</html>