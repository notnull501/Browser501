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
//(1)Array
String winner[] = new String[3];
winner[0] = "홍길동1";
winner[1] = "홍길동2";
winner[2] = "홍길동3";
request.setAttribute("w", winner);











RequestDispatcher d = request.getRequestDispatcher("collectionResult.jsp");
d.forward(request,response);


%>

</body>
</html>