<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/css/template.css"/>' />

<body>
	<div class="menu">
		<tiles:insertAttribute name="menu" />
	</div>
	<div class="header">
		<tiles:insertAttribute name="header" />
	</div>

	<div class="body">
		<tiles:insertAttribute name="body" />
	</div>
	<div class="footer">
		<tiles:insertAttribute name="footer" />
	</div>

</body>



