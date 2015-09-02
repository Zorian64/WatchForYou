
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
				<h1>Watch Manager</h1>
				<form:form method="post"
					action="${pageContext.request.contextPath}/watch/saveAdd"
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
							<td><form:input path="price" type="number" step="0.01" placeholder="Price" /></td>
						</tr>
						<tr>
							<td><form:label path="picture">Picture</form:label></td>
							<td><input type="file" name="file" id="watch"
								placeholder="File Name" /></td>
						</tr>

					</table>
					<br/><input type="submit" value="Add watch" /><br>
					<input type="button"
						value="Return to HOME"
						onClick="location.href = '<c:url value="/index"/>'">
				</form:form>

				

			</div>
		</div>

	</tiles:putAttribute>

</tiles:insertDefinition>






























