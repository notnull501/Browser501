<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="test_serverprog.MemberDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%	request.setCharacterEncoding("utf-8"); %>
</head>
<body>

<jsp:useBean id="member" class="test_serverprog.Member" />
<jsp:setProperty property="*" name="member"/>
<%-- useBean과 setProperty 액션태그로 폼으로 입력받은 id, password, name을 저장--%>

<%
	//MemberDao 객체 생성
	MemberDao dao = MemberDao.getInstance();
	
	//useBean으로 생성한 member객체를 MemberDao로 전달
	//insert()를 실행 후 결과값을 result로 저장
	int result = dao.insert(member);
	
	if(result == 0){	// 입력되지 않은 경우(id가 동일해서 무결성 법칙 위배 등)
		 out.println("<script>alert('입력에 실패하였습니다.');");		 
		 out.println("history.back()</script>");		 
	 
	} else if (result > 0) {	// 입력된 경우
		 out.println("<script>alert('입력 성공');");
		 out.println("location.href='main.jsp'</script>");
	}
%>

</body>
</html>