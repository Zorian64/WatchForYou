<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/css/contact-us-style.css"/>' />

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		<div class="parent_popup">
			<div class="form-style-6">
				<h1>Add user page</h1>
				<form:form method="POST" commandName="user"
					action="${pageContext.request.contextPath}/user/saveAdd"
					enctype="multipart/form-data">

					<table>
						<tr>
							<td><form:label path="login">Login</form:label></td>
							<td><form:input path="login" type="text" placeholder="Login" /></td>
						</tr>
						<tr>
							<td><form:label path="password">Password</form:label></td>
							<td><form:input path="password" type="text"
									placeholder="Password" /></td>
						</tr>
						<tr>
							<td><form:label path="firstname">Firstname</form:label></td>
							<td><form:input path="firstname" type="text"
									placeholder="Firstname" /></td>
						</tr>
						<tr>
							<td><form:label path="secondname">Price</form:label></td>
							<td><form:input path="secondname" type="text"
									placeholder="Secondname" /></td>
						</tr>
						<tr>
							<td><form:label path="email">Email</form:label></td>
							<td><form:input path="email" type="text" placeholder="Email" /></td>
						</tr>

						<tr>


							<td><form:select path="role">
									<form:option value="-" label="--Please Select" />
									<form:options items="${rolesList}" 
										itemLabel="roleName" />
								</form:select></td>



							<%-- 							<td><form:select path="role"> --%>
							<%-- 									<form:option value="NONE" label="--- Select role---" /> --%>
							<%-- 									<form:option value="admin" id="2" item="rolename" /> --%>
							<%-- 									<form:option value="moderator" id="1" item="rolename" /> --%>
							<%-- 								</form:select></td> --%>
						</tr>
					</table>
					<br />
					<input type="submit" value="Add user" />
					<input type="button" value="Return to HOME"
						onClick="location.href = '<c:url value="/index"/>'">
				</form:form>

			</div>
		</div>

	</tiles:putAttribute>

</tiles:insertDefinition>




















