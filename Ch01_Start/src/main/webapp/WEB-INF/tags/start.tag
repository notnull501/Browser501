<%@tag import="java.util.Calendar"%>

<!-- body-content=empty,tagdependent, scriptless(default) -->

<%@ tag language="java" pageEncoding="UTF-8" body-content="empty"%>
<%
	Calendar c = Calendar.getInstance();
%>
<%=c.get(Calendar.YEAR)%>년
<%=c.get(Calendar.MONTH)+1 %>월
<%=c.get(Calendar.DATE)%>일<br>