<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>responseResult.jsp</title>
</head>
<body>
<img src="forward.png"><br>
<img src="redirect.png"><br>
지금 페이지는 <b>responseResult.jsp</b>이다.<br>
<%
	String id = request.getParameter("id");
    out.println("id: "+id+"<hr>");
    
    String ids = (String)request.getAttribute("ids");
    out.println("ids: "+ids);
%>

</body>
</html>