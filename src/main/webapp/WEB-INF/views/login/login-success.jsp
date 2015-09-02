<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="css/menu.css" rel="stylesheet" type="text/css">
<tiles:insertDefinition name="defaultTemplate">
<tiles:putAttribute name="body">
		<IMG SRC='<c:url value="/images/welcome.jpg"/>' ALT="Welcome!!!">
	</tiles:putAttribute>
	</tiles:insertDefinition>