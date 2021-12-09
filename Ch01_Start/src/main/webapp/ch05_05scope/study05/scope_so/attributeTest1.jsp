<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table{
	border:1px solid black;
	width:280px;
	heigth:100px;
	text-align:left;
}
th{
	border:1px solid black;
}
tr{
	border:1px solid black;
}
</style>
</head>
<body>
	<h3>영역과 속성 테스트</h3>
	<%
		application.setAttribute("id", request.getParameter("id"));
		application.setAttribute("name", request.getParameter("name"));
		String id = (String)application.getAttribute("id");
		String name = (String)application.getAttribute("name");
		out.println("<h3>"+name+"님 반갑습니다.<br>");
		out.println(name+"님의 아이디는 "+id+"입니다<br></h3>");
	%>
	<form action="attributeTest2.jsp">
		<table>
			<tr><th colspan="2">Session 영역에 저장할 내용들</th></tr>
			<tr>
			<th>email 주소</th>
			<th><input type="text" id="email" name="email"></th>
			</tr>
			<tr>
			<th>집주소</th>
			<th><input type="text" id="addr" name="addr"></th>
			</tr>
			<tr>
			<th>전화번호</th>
			<th><input type="text" id="tel" name="tel"></th>
			</tr>
			<tr>
			<th colspan="2"><input type="submit" value="전송"></th>
			</tr>
		</table>
	</form>
</body>
</html>