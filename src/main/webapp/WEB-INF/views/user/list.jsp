<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!-- <link rel="stylesheet" type="text/css" -->
<%-- 	href='<c:url value="/css/styles.css"/>' /> --%>


<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		<div align="center">
			<h3>Users List</h3>
			<p>${message}</p>
			<c:if test="${!empty users}">
				<table class="data">
					<tr>
						<th width="3%">Id</th>
						<th width="8%">LOGIN</th>
						<th width="8%">PASSWORD</th>
						<th width="10%">FirstName</th>
						<th width="10%">SecondName</th>
						<th width="10%">Email</th>
						<th width="6%">Role</th>

						<th width="2%"></th>

					</tr>
					<c:forEach items="${users}" var="user">
						<tr>
							<td width="3%">${user.id}</td>
							<td width="8%">${user.login}</td>
							<td width="8%">${user.password}</td>
							<td width="10%">${user.firstname}</td>
							<td width="10%">${user.secondname}</td>
							<td width="10%">${user.email}</td>
							<td width="6%">${user.role.roleName}</td>
							<td width="2%"><a
								href="${pageContext.request.contextPath}/user/delete/${user.id}"
								onclick="return confirm('Are you sure you want to delete this watch?')"><img
									src="${pageContext.request.contextPath}/img/delete_icon.gif"
									border="0" title="Delete this user" /></a><a
								href="${pageContext.request.contextPath}/user/openEditPage/${user.id}"><img
									src="${pageContext.request.contextPath}/img/edit-icon.gif"
									border="0" title="Edit this user" /></a></td>

						</tr>
					</c:forEach>
				</table>
			</c:if>
		</div>
	</tiles:putAttribute>

</tiles:insertDefinition>

</html>