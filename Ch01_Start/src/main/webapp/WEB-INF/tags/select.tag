<%@ tag pageEncoding="UTF-8" body-content="empty"%>
<%@ tag trimDirectiveWhitespaces="true" %>
<%@ attribute name ="name" required="true" %>
<%@ tag dynamic-attributes="optionMap" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<select name="${name }">
	<c:forEach items="${optionMap }" var="option">
	  <option value="${option.key }">${option.value }</option>
	</c:forEach>
</select>