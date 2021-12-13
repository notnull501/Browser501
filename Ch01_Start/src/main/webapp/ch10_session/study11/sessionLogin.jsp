<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="sessionLogin2.jsp" method="post">
<table width=400>
	<tr bgcolor="yellow">
		<td align=right>아이디 :</td>
        <td><input type="text" name="id" size=10></td>
	</tr>
	<tr bgcolor="yellow">
		<td align=right>비밀번호 :</td>
        <td><input type="password" name="pass" size=12></td>
	</tr>
	<tr bgcolor="yellow">
		<td colspan=2 align=center>
			<input type="submit" value="로그인">
            <input type="reset" value="다시 작성">
		</td>
	</tr>
</table>
</form>

</body>
</html>