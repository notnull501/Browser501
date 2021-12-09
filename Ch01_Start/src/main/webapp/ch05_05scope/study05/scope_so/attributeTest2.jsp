<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		session.setAttribute("email", request.getParameter("email"));
		session.setAttribute("addr", request.getParameter("addr"));
		session.setAttribute("tel", request.getParameter("tel"));
	%>
	<h3>영역과 속성 테스트</h3>
	<h3><%=application.getAttribute("name") %>
	님의 정보가 모두 저장 되었습니다.<a href="attributeTest3.jsp">
	확인하러 가기</a></h3>
</body>
</html>