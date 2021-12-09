<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attribute1</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<h1>영역과 속성 테스트</h1>
<%
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
String id = request.getParameter("id");

//Application : 모든 사이트 방문자
application.setAttribute("name",name);			
application.setAttribute("id",id);			

%>

<b>${name }님 반갑습니다.</b><br>
<b>${name }님의 아이디는 ${id }입니다.</b><br>
	<form action="attributeTest2.jsp" method="post">
		<table>
		<tr><td colspan="2">Session 영역에 저장할 내용들</td></tr>
		<tr>
			<td><label>email주소</label></td>
			<td><input type= "text" id="email" name="email" value="aaa@aaaa.aa"></td>
		</tr>
		<tr>
			<td>집주소</td>
			<td><input type= "text" id="address" name="address" value="서울시 아파트"></td>
		<tr>
		<tr>
			<td>전화번호</td>
			<td><input type= "text" id="pnumber" name="pnumber"value="000-111-2222"></td>
		<tr>
			<td colspan="2"><input type="submit" value="전송"></td>
		</tr>
		
		</table>
	</form>
</body>
</html>