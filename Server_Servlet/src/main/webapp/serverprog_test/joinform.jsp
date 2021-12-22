<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(function() {
		$("#id").focus(); // ID란에 포커스 주기
	});
</script>
<style>
label {
	font-weight: bold;
	width: 80px;
	display: inline-block;
}

fieldset {
	width: 300px;
	padding: 20px;
}
</style>
</head>
<body>
	<h3>joinform.jsp</h3>
	<hr>
	java package는 serverprog.Member, serverprog.MemberDao에 위치
	<br> Oracle DB는 jsp/jsp의 Member1 테이블 사용
	<hr>

	아이디, 암호, 암호확인, 이름은 필수항목입니다.
	<br>
	<br>
	<form action="join.jsp" method="post" name="FormLogin">
		<fieldset>
			<label for="id"> 아이디 </label>:: <input type="text" id="id" name="id"
				required><br> <label for="password"> 암호 </label>:: <input
				type="password" name="password" id="password" required><br>
			<label for="password2"> 암호확인 </label>:: <input type="password"
				id="password2" required><br> <label for="name">
				이름 </label>:: <input type="text" id="name" name="name" required><br>
			<input type="button" onclick="checkPwd()" value="제출">
		</fieldset>
	</form>

	<script>
		//	제출 버튼을 누를때 비밀번호 체크
		function checkPwd() {
			var password = document.getElementById("password").value;
			var password2 = document.getElementById("password2").value;

			if (password != password2) {
				alert("암호와 암호확인이 일치하지 않습니다.");
				return false;
			} else {
				document.FormLogin.submit();
			}
		}
	</script>



</body>
</html>