<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
     "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit user page</title>
<link rel="stylesheet" type="text/css" href='<c:url value="/css/styles.css"/>' />
</head>
<body>
	<div align="center">
		<h1>Edit user page</h1>
		<p>Here you can edit the existing user.</p>
		<p>${message}</p>
		<form:form method="post"
			action="${pageContext.request.contextPath}/user/saveEdit/${user.id}"
			commandName="user" enctype="multipart/form-data">
			<form:errors path="*" cssClass="error" />
			<table>
<tbody>
	<tr>
		<td>Login:</td>
		<td><form:input path="login" /></td>
	</tr>
	<tr>
		<td>Password:</td>
		<td><form:input path="password" /></td>
	</tr>
	<tr>
		<td>FirstName:</td>
		<td><form:input path="firstname" /></td>
	</tr>
	<tr>
		<td>SecondName:</td>
		<td><form:input path="secondname" /></td>
	</tr>
	
	<tr>
		<td>Email:</td>
		<td><form:input path="email" /></td>
	</tr>
	<tr>
		<td><input type="submit" value="Edit USER" /></td>
		<td></td>
	</tr>
</tbody>
</table>
		</form:form>
		<p>
			<a href="${pageContext.request.contextPath}/index">Home page</a>
		</p>
	</div>
</body>
</html>