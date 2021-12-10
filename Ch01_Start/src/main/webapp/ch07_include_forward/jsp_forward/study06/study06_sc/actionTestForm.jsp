<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js">
</script>
<script>
	$(document).ready(function(){
		$("#submit").on("click",function(){
			if($("#admin").is(":checked")==true){
				if($("#id").val()!="admin" || $("#pw").val()!="123456"){
					alert("관리자 권한이 없습니다.");	
					$("form").attr("action","#");
				}else if($("#id").val()=="admin" && $("#pw").val()=="123456"){
					alert("관리자 로그인이 승인 되었습니다");
				}
			}
		});
	});
	$(document).ready(function(){
		$("#submit").on("click",function(){
			if($("#user").is(":checked")==true){
				if($("#id").val()!="abcd" || $("#pw").val()!="1234"){
					alert("아이디와 비밀번호가 다릅니다.");	
					$("form").attr("action","#");
				}else if($("#id").val()=="abcd" && $("#pw").val()=="1234"){
					alert("환영합니다 "+$("#id").val()+"님!");
				}
			}
		});
	});
	$(function(){
		$("#submit").on("click",function(){
			if(($("#user").is(":checked")==false) && ($("#admin").is(":checked")==false)){
				alert("관리자 또는 사용자 여부를 체크 하여 주십시오");
				$("form").attr("action","#");
			}
		});
	});
</script>
</head>
<body>
	<form action="actionTest.jsp" method="post">
		아이디:<input type="text" name="id" id="id"><br>
		암 호:<input type="text" name="pw" id="pw"><br>
			<input type="radio" name="type" id="user">사용자
			<input type="radio" name="type" id="admin">관리자<br>
			<input type="submit" value="로그인" id="submit">
	</form>
</body>
</html>