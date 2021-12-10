<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="m2" scope="request" class="ch08_usebean.member.MemberInfo"></jsp:useBean>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=m2.getName() %>:: <%=m2.getId() %>
</body>
</html>