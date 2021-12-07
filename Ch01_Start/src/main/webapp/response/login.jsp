<%@page import="java.net.URLEncoder"%>
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

// 주석
/* 여러줄 주석 */
  String id=request.getParameter("memberid");
  if(id != null && id.equals("admin")){
	  String value="홍길동";
	  String encodeValue = URLEncoder.encode(value,"utf-8");
	  response.sendRedirect("index.jsp?name="+encodeValue);
  }else{
	  out.println("잘못된 id입니다.");
  }
%>
</body>
</html>