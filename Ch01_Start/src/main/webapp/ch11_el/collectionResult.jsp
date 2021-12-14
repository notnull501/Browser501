<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
(1)Array <br>
${w[0]}<br>
${w[1]}<br>
${w[2]}<br>

<%
 //getAttribute,반복문 사용
	String[] str = (String[])request.getAttribute("w");
    for(String s : str)
    	out.println(s+" ");
    out.println("<br>");
    
    String[] str2 = (String[])request.getAttribute("w");
    for(int i=0; i< str2.length; i++)
    	out.println(str2[i]+" ");
    out.println("<br>");
    
    








%>
</body>
</html>