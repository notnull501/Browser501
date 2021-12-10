<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#loginForm{
		text-align:center;
	}
	
	#loginFieldset{
		text-align:left;
		display:inline-block;
	}
</style>
</head>
<body>
<%
	String id = (String)session.getAttribute("id");
	String loginType= (String)session.getAttribute("loginType");
	
	if(id == null){
		
	}
	else if(id.equals("admin")){
		RequestDispatcher d = request.getRequestDispatcher("ManagerMain.jsp");
		d.forward(request, response);
	}
	else{
		RequestDispatcher d = request.getRequestDispatcher("userMain.jsp");
		d.forward(request, response);
	}
	

%>
<form action="actionTest.jsp" method="post" id="loginForm">
<fieldset id="loginFieldset">
아이디:<input type="text" name="id"><br>
암 호:<input type="password" name="pwd"><br>
<input type="radio" value="사용자" name="loginType" checked>사용자
<input type="radio" value="관리자" name="loginType">관리자<br>
<input type="submit" value="로그인">
</fieldset>
</form>


</body>
</html>