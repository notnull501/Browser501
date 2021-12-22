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
	int result = ((Integer)request.getAttribute("result")).intValue();	//Obj형을 int로 변환	
	
    if(result == 1){   	 	//result가 1일 경우
 							//자바스크립트로 로그인 성공이라는 창을 띄운 후 리다이렉트 %>
	    	<script>
	    	alert("로그인 성공!");
	    	document.location.href="main.ide";
	    	</script>
    	<%	
//     	response.sendRedirect("main.do");	
//위와 같이 jsp로 리다이렉트 하려고 할 경우 알림창이 우선순위로 무시되어서 자바스크립트로 리다이렉트 처리	
    } else if(result == 0){  	//result가 0인 경우 
    	//자바스크립트로 암호가 다르다는 창을 띄움  %>
	    	<script>
	    	alert("암호가 다릅니다.");
	    	document.location.href="loginForm.jsp";
	    	</script>
    	<%	
   	
    } else if(result == -1){	//result가 -1인 경우 
    							//자바스크립트로 없는 아이디라는 창을 띄운 후 리다이렉트 %>
    	<script>
    	alert("존재하지 않는 데이터입니다.")
    	document.location.href="loginForm.jsp";
    	</script>
    	<%
    }
%>
</body>
</html>