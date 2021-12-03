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
 int sum=0;
 for(int i=0; i <= 10; i++){
	 sum = sum+i; 
 }
 System.out.println("console: "+sum);
%>
<hr>
<%
 int sum2=0;
 for(int i=0; i <= 10; i++){
	 sum2 = sum2+i; 
 }
 out.println("web output: "+sum2);
%>
<hr>
<%
 int sum3=0;
 for(int i=0; i <= 10; i++){
	 sum3 = sum3+i; 
 }
%>
 web output2: <%=sum3 %>
<hr>
</body>
</html>