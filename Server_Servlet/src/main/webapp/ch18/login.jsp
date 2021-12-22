<%@page import="command_pattern.EmpDTO"%>
<%@page import="java.util.ArrayList"%>
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
ArrayList<EmpDTO> list = (ArrayList<EmpDTO>)request.getAttribute("list");	//Obj형을 int로 변환	
	
		for(EmpDTO dto : list) {
	String empno = dto.getEmpno();
	String ename = dto.getEname();
	int sal = dto.getSal();
	String deptno = dto.getDeptno();
	out.print(empno+"\t"+ename+"\t"+sal+"\t"+deptno+"<br>");			
}

%>
</body>
</html>