<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function idSubmit(){
		document.idForm.action ="test1.jsp";
		document.idForm.submit();
	}
</script>
</head>
<body>
	<!-- Header -->
	<form name="idForm" method="post" >
		<table width="100%">
			<tr>
			<td>ID : <input type="text" name="id" size="15"> 
				 <input	type="button" value="확인" onClick="idSubmit()">
                         </td>
			</tr>
		</table>
	</form>
</body>
</html>
