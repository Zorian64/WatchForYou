<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="css/menu.css" rel="stylesheet" type="text/css">
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		<div>
			<p>
				<br /> <a href="${pageContext.request.contextPath}/watch/openAddPage">Add
					new watch</a> <br /> <a
					href="${pageContext.request.contextPath}/watch/list">Watch
					list</a><br /> <br /> <a
					href="${pageContext.request.contextPath}/user/openAddPage">Add new user</a><br />
				<a href="${pageContext.request.contextPath}/user/list">User list</a><br />
				<a href="${pageContext.request.contextPath}/index">Home</a><br />
			</p>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>