<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>초기화 파라미터를 읽어오기</title>
</head>
<body>
초기화 파리미터 목록::<br>

<hr>
::[getInitParater()]::<br>
<%
	String param1 = application.getInitParameter("logEnabled");
	String param2 = application.getInitParameter("debugLevel");
	out.println("logEnabled: "+param1+"<br>"+"debugLevel: "+param2);
%>

<hr>
[getInitParameterNames()]<br>
<ul>
 <%
 Enumeration<String> initParam =  application.getInitParameterNames();
 while(initParam.hasMoreElements()){
	String name =  initParam.nextElement();
	String value = application.getInitParameter(name);
	out.println("<li>"+name+" : "+value+"</li>");
 }
 %>
</ul>
</body>
</html>