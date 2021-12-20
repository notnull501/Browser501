<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="num1" value="12345678.1234"></c:set>

숫자 데이터 : ${num1 }<br>
화폐 타입: <fmt:formatNumber value="${num1 }" type="currency"/><br>
USA화폐: <fmt:setLocale value="en_US"/>
        <fmt:formatNumber value="${num1 }" type="currency"></fmt:formatNumber>
</body>
</html>