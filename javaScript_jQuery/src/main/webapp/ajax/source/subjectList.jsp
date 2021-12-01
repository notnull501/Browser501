
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String[] subj = {"JAVA","Oracle","Web","JSP","Spring"};
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<ul>
	<%
		for(String s: subj){
		System.out.println("console out:"+s);
	%>
	<li><%=s %></li>
	<%		
		}
	%>
</ul>
</body>
</html>