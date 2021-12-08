<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scope:영역,범위</title>
</head>
<body>
<img src="scope_attribute.png"><br><br>
pageContext Scope:하나의 jsp페이지 안에서 사용(변수)<br>
request Scope: include,forward를 통해서 다른페이지에서도 사용(변수)<br>
session Scope: browser상태에서 페이지 이동시 사용(변수 공유)<br>
application Scope :서버가 시작부터 종료까지 사용(변수공유 : 방문자수)<br><hr>

<%
	pageContext.setAttribute("page", "page1");//같은 페이지 내에서 동작
    request.setAttribute("request", "request1");//forward, include 있을때 동작
    session.setAttribute("session", "session1");//같은 브라우저 내에서 동작
    application.setAttribute("application","application1");//모든 사이트 방문자 공유
%>
<%
//request 영역에 데이터 저장시 forward, include 통해서 사용
RequestDispatcher d = request.getRequestDispatcher("other_scope.jsp");
d.forward(request, response);

%>



pageContext out1:<%=pageContext.getAttribute("page") %><br>
request out1: <%=request.getAttribute("request") %><br>
session out1: <%=session.getAttribute("session") %><br>
application out1: <%=application.getAttribute("application") %><br>
</body>
</html>