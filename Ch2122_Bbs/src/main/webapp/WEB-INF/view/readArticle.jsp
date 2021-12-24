<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 읽기</title>
</head>
<body>
	<table border="1" width="100%">
		<tr>
			<td>번호</td>
			<td>${articleData.article.number }
		</tr>
		<tr>
			<td>작성자</td>
			<td>${articleData.article.writer.name }
		</tr>
		<tr>
			<td>제목</td>
			<td><c:out value="${articleData.article.title }"></c:out>
		</tr>
		<tr>
			<td>내용</td>
			<td><u:pre value="${articleData.content }" />
		</tr>
		<tr>
			<td colspan="2"><c:set var="pageNo"
					value="${empty param.pageNo ? '1' : param.pageNo }"></c:set> <a
				href="list.do?pageNo=${pageNo }">[목록]</a> <c:if
					test="${authUser.id == articleData.article.writer.id }">
					<a href="modify.do?no=${articleData.article.number }">[게시글 수정]</a>
					<a href="delete.do?no=${articleData.article.number }">[게시글 삭제]</a>
				</c:if></td>
		</tr>
	</table>
</body>
</html>