
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/css/contact-us-style.css"/>' />
<link rel="stylesheet" type="text/css"
	href='<c:url value="/css/styles.css"/>' />
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<div class="parent_popup">

			<p style="text-align: center;" class="error">${message}</p>


			<div class="form-style-6">
				<h1>Edit watch page</h1>
				<form:form method="post"
					action="${pageContext.request.contextPath}/watch/saveEdit/${watch.id}"
					commandName="watch" enctype="multipart/form-data">
					<table>
						<tr>
							<td><form:label path="brend">Brend</form:label></td>
							<td><form:input path="brend" type="text" placeholder="Brend" /></td>
						</tr>
						<tr>
							<td><form:label path="model">Model</form:label></td>
							<td><form:input path="model" type="text" placeholder="Model" /></td>
						</tr>
						<tr>
							<td><form:label path="color">Color</form:label></td>
							<td><form:input path="color" type="text" placeholder="Color" /></td>
						</tr>
						<tr>
							<td><form:label path="price">Price</form:label></td>
							<td><form:input path="price" type="number" step="0.01"
									placeholder="Price" /></td>
						</tr>
						<tr>
							<td><form:label path="picture">Picture</form:label></td>
							<td><input type="file" name="file" id="watch"
								placeholder="File Name" /></td>
						</tr>

					</table>
					<br />
					<input type="submit" value="Edit Watch" />
				</form:form>

				<p>
					<a href="${pageContext.request.contextPath}/index">Home page</a>
				</p>

			</div>
		</div>

	</tiles:putAttribute>

</tiles:insertDefinition>


















