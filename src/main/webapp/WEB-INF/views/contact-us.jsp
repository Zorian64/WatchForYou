<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/css/contact-us-style.css"/>' />
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		<div class="parent_popup">
			<div class="form-style-6">
				<h1>Contact Us</h1>
				<form>
					<input type="text" name="field1" placeholder="Your Name" /> <input
						type="email" name="field2" placeholder="Email Address" />
					<textarea name="field3" placeholder="Type your Message"></textarea>
					<input type="submit" value="Send" /> <input type="button"
						value="Return to HOME"
						onClick="location.href = '<c:url value="/index"/>'">

				</form>
			</div>
		</div>

	</tiles:putAttribute>

</tiles:insertDefinition>