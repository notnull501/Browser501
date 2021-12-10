<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
로그아웃 페이지
<%
	session.invalidate();
	response.sendRedirect("actionTestForm.jsp");
%>
