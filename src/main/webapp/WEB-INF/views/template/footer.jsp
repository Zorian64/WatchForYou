<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/css/footer.css"/>' />
<div class="footer.div">
	<table class="footer.table">
		<tr>
			<td width="1200px" height="100px"
				background='<c:url value="/images/footer.gif"/>' style="">

				<p align="center">
					<a href="${pageContext.request.contextPath}/index"
						style="color: gray">Home</a> | <a
						href="${pageContext.request.contextPath}/contact-us"
						style="color: gray">Contact Us</a> |
					<sec:authorize access="!isAuthenticated()">
						<a href="${pageContext.request.contextPath}/login-form"
							style="color: gray"> Login</a>
						<br>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
						<a href="<c:url value="/j_spring_security_logout" />">Logout</a>
						<br>
					</sec:authorize>
				</p>
				<p align="right" style="margin-right: 20px">
					<a style="color: white;">Copyright © 2015 All Rights Reserved</a>
				</p>
			</td>
		</tr>
	</table>
</div>
