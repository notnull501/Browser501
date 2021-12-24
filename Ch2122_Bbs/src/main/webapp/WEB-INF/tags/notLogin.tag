<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless"%>
<%@ tag trimDirectiveWhitespaces="true"%>
<%
	HttpSession httpSession = request.getSession(false);
if (httpSession == null || httpSession.getAttribute("authUser") == null) {
%>
<jsp:doBody></jsp:doBody>
<%
	}
%>
