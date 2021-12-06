<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Enumeration"%>
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
request.setCharacterEncoding("utf-8");
response.setContentType("text/html; charset=utf-8");
String[] sports = request.getParameterValues("sports");
String sex = request.getParameter("sex");

for(String s : sports)
	out.println("좋아하는 운동:: "+s+"<br>");
out.println("성별: "+sex+"<br>");
%>
<hr>
<%
  Enumeration<String> sports2 = session.getAttributeNames();
  String sex2 = (String)session.getAttribute("s2");

while(sports2.hasMoreElements()){
	String sessionName = sports2.nextElement().toString();
	String sessionValue = (String)session.getAttribute(sessionName).toString();
    out.println("Name:: "+sessionName+"<br>");
    out.println("Value:: "+sessionValue+"<br>");
}
	
out.println("성별: "+sex2+"<br>");

%>
<Hr>
id(JSP): <%=request.getParameter("id") %><br>
id(EL): ${param.id }
</body>
</html>