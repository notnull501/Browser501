<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String value1 = request.getParameter("v1");
    int v1 = Integer.parseInt(value1);
	String value2 = request.getParameter("v2");
	int v2 = Integer.parseInt(value2);
	System.out.println(v1+v2);
	out.print(v1+v2);
%>
