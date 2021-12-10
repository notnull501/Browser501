<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키생성</title>
</head>
<body>
Cookie:서버에서 만들어서 클라이언트쪽에 저장되는 관리정보<br>
       :이름,값, 유효시간 도메인 주소,경로 등등<br>
<%
	Cookie c = new Cookie("name","홍길동");
    response.addCookie(c);
%>
쿠키이름:: <%=c.getName() %><br>
쿠키 값:: <%=c.getValue() %>
</body>
</html>