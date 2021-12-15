<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL</title>
</head>
<body>
<%
	String param1 = application.getInitParameter("Name");
	String param2 = application.getInitParameter("AGE");
	out.println("Name: "+param1+"<br>"+"AGE: "+param2+"<br>");
%>
초기화 Parameter Name: ${initParam.Name }<br>
초기화 Parameter AGE: ${initParam.AGE }<br>
<hr>
요청 URI:${pageContext.request.requestURI }<br>
요청 URI:<%=request.getRequestURI() %>
<hr>
아이디: ${param.id }<br>
선택한 운동: ${paramValues.sports[0]}
          ${paramValues.sports[1]}
          ${paramValues.sports[2]}
          ${paramValues.sports[3]}
</body>
</html>
