<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		<div>
			<h3>Watches List</h3>
			<p>${message}</p>
			<c:if test="${!empty watches}">
				<table class="data">
					<tr>
						<th width="2%">Id</th>
						<th width="10%">Brend</th>
						<th width="10%">Model</th>
						<th width="7%">Color</th>
						<th width="5%">Price</th>
						<th width="14%">Photo</th>
						<th width="4%"></th>
					</tr>
					<c:forEach items="${watches}" var="watch">
						<tr style="border: 2px solid gray">
							<td width="2%">${watch.id}</td>
							<td width="10%">${watch.brend}</td>
							<td width="10%">${watch.model}</td>
							<td width="7%">${watch.color}</td>
							<td width="5%">${watch.price}</td>
							<td width="14%"><c:out value="${watch.fileName}" /></td>
							<td width="4%"><a
								href="${pageContext.request.contextPath}/watch/download/${watch.id}"><img
									src="${pageContext.request.contextPath}/img/display-icon.gif"
									border="0" title="Display this watch" /></a> <a
								href="${pageContext.request.contextPath}/watch/delete/${watch.id}"
								onclick="return confirm('Are you sure you want to delete this watch?')"><img
									src="${pageContext.request.contextPath}/img/delete_icon.gif"
									border="0" title="Delete this watch" /></a><a
								href="${pageContext.request.contextPath}/watch/openEditPage/${watch.id}"><img
									src="${pageContext.request.contextPath}/img/edit-icon.gif"
									border="0" title="Edit this watch" /></a></td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>