<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
EL(Parameter)형식:: ${id }<br>
EL(Attribute)형식:: ${id_attr }<br>
Jsp(Parameter)형식:: <%=session.getAttribute("id") %><br>
Jsp(Attribute)형식:: <%=session.getAttribute("id_attr") %><br>
<hr>
당신이 입력한 정보입니다(고전적인 방식). <hr>
아이디 : <%= request.getParameter("id")%> <br>
비밀번호 : <%= request.getParameter("passwd")%> <br>
<hr>
당신이 입력한 정보입니다(EL 방식). <hr>
아이디 : ${param.id} <br>
비밀번호 : ${param["passwd"]}
</body>
</html>
