<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<title>Jsp:jQuery</title>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style type="text/css">
body {
	font-weight: bold;
	width: 1000px;
	height: 700px;
	width: 1000px;
}

input:focus {
	background-color: #E2F2FF;
}

p {
	margin: 0 auto;
}

#result {
	width: 40%;
	height: 30%;
	border: 5px double royalblue;
}

div {
	margin-top: 20px;
}
</style>
<script>	
	$(function() {
		$("#send").on(
				"click",
				function() {
					if ($("#id").val() != "" && $("#pw").val() != "") {
						$("#result").empty().append(
								"아이디:: " + $("#id").val() + "<br>비밀번호:: "
										+ $("#pw").val()+"<br>")

					} else {
						alert("아이디와 비밀번호를 입력하세요.");
					}
				});
	});
</script>
</head>
<body>
	<p>
		아이디<span><input type="email" id="id" placeholder="aaaa@aaa.com"></span>
	</p>
	<p>
		비밀번호<span><input type="password" id="pw" placeholder="비밀번호"></span>
	</p>
	<input type="button" id="send" value="확인">
	<br>
	<br>
	<p>결과</p>
	<div id="result"></div>
</body>
</html>
