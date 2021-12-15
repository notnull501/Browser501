<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="elfunc" uri="/WEB-INF/tlds/fn2.tld" %>    

<%
	request.setAttribute("price", 123456);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>El함수 호출</title>
</head>
<body>
오늘은 <b>${elfunc:formatNumber(price,'#,##0') }</b>
</body>
</html>