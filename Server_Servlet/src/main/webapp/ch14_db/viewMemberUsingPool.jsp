<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록(422)</title>
</head>
<body>
Member Table 내용::<br>
<table width="100%" border="1">
	<tr>
		<td>이름</td><td>아이디</td><td>이메일</td>
	</tr>
	<%
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
		try{
			String jdbcDriver = "jdbc:apache:commons:dbcp:Ch14_Db";
		    String query = "select * from member order by memberid";
		    conn =DriverManager.getConnection(jdbcDriver);
		    stmt = conn.createStatement();
		    rs = stmt.executeQuery(query);
		    while(rs.next()){
	%>
	<tr>
		<td><%=rs.getString("name") %></td>
		<td><%=rs.getString("memberid") %></td>
		<td><%=rs.getString("email") %></td>
	</tr>
	<%	    	
		    }
		}finally{
			if(rs != null){
				rs.close();
			}
			if(stmt != null){
				rs.close();
			}
			if(conn != null){
				rs.close();
			}
		}
    %>
</table>
</body>
</html>