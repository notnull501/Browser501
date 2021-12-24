<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 삭제</title>
</head>
<body>
	${modReq.userId }님의 ${modReq.title } 게시글을 삭제했습니다.
	<br>${ctxPath = pageContext.request.contextPath ; '' }
	<a href="${ctxPath }/article/list.do">[게시글 목록보기]</a>
</body>
</html>