<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Jsp:jQuery</title>
<style type="text/css">
#result{
  width:300px;
  height:200px;
  border: 5px double #6699FF;
}
</style>
<script>
	$(document).ready(function() {
		$("#pro").click(function() {
			var result = "아이디:: "+$("#id").val()+"<br>";
			    result += "비밀번호:: "+$("#passwd").val()+"<br>";
			$("#result").html(result);
		});
	});
</script>
</head>
<body>
<label for="id">아이디</label>
<input id="id" class="id" name="id" type="text" placeholder="aaa@aaa.com" required autofocus ><br>
<label for="passwd">비밀번호</label>
<input id="passwd" class="passwd" name="passwd" type="password" placeholder="비밀번호" required><br>
<button id="pro">확인</button>
<p>결과</p>
  <div id="result"></div>
</body>
</html>
