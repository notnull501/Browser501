<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attribute2</title>
</head>
<body>
<h1>영역과 속성 테스트</h1>

<%
request.setCharacterEncoding("UTF-8");
String email = request.getParameter("email");
String address = request.getParameter("address");
String pnumber = request.getParameter("pnumber");

//Session:  같은 브라우저 내에서 동작
session.setAttribute("email",email);			
session.setAttribute("address",address);			
session.setAttribute("pnumber",pnumber);			

%>

<b>${name }님의 정보가 모두 저장 되었습니다. </b>
<a href="attributeTest3.jsp">확인하러가기</a>

</body>
</html>