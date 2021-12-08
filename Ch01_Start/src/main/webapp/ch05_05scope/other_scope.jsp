<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>::JSP::</h3>
pageContext out2:<%=pageContext.getAttribute("page") %><br>
request out2: <%=request.getAttribute("request") %><br>
session out2: <%=session.getAttribute("session") %><br>
application out2: <%=application.getAttribute("application") %><br>
<hr>
<h3>EL</h3>
pageContext out3:${pageScoe.page}<br>
request out3: ${requestScope.request}<br>
session out3: ${sessionScope.session}<br>
application out3: ${applicationScope.application}<br>
</body>
</html>