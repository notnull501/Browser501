<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name ="";
	String value = "";
	
	String cookie = request.getHeader("Cookie");
	if(cookie != null){
		Cookie[] cookies =  request.getCookies();
		
		for(int i=0; i<cookies.length;i++){
			if(cookies[i].getName().equals("name")){
				name = cookies[i].getName();
				value = cookies[i].getValue();
			}
		}
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h4>쿠키이름:: <%=name %></h4>
<h4>퀴키값: <%=value %></h4>
</body>
</html>