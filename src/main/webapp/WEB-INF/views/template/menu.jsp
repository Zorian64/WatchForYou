<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/css/menu.css"/>' />

<div>
	<table style="width: 100%">
		<tr>
			<td width="400px"><IMG SRC='<c:url value="/images/Logo1.png"/>'
				ALT=""></td>
			<td>
				<table style="float: right;">
					<tr>
						<td>
							<ul class="main-navigation">
								<li><a href="${pageContext.request.contextPath}/index">HOME</a></li>
								<li><a href="${pageContext.request.contextPath}/watch/watchList">WATCHES</a>
<!-- 									<ul> -->
<!-- 										<li><a href="#">MEN'S</a></li> -->
<!-- 										<li><a href="#">LADIE'S</a></li> -->
<!-- 										<li><a href="#">UNISEX</a></li> -->
<!-- 									</ul> -->
								</li>
								<sec:authorize access="hasRole('ROLE_ADMIN')">
									<li><a href="${pageContext.request.contextPath}/admin">ADMIN
											PAGE</a>
										<ul>
											<li><a href="#">WATCH</a>
												<ul>
													<li><a
														href="${pageContext.request.contextPath}/watch/openAddPage">ADD
															WATCH</a></li>
													<li><a
														href="${pageContext.request.contextPath}/watch/list">WATCHES
															LIST</a></li>
												</ul></li>
											<li><a href="#">USER</a>
												<ul>
													<li><a
														href="${pageContext.request.contextPath}/user/openAddPage">ADD
															USER</a></li>
													<li><a
														href="${pageContext.request.contextPath}/user/list">USERS
															LIST</a></li>
												</ul></li>
										</ul></li>
								</sec:authorize>
								<li><a href="${pageContext.request.contextPath}/contact-us">CONTACT
										US</a></li>
								<li><a href="${pageContext.request.contextPath}/aboutus">ABOUT US</a></li>
								<sec:authorize access="hasRole('ROLE_USER')">
									<li><a
										href="${pageContext.request.contextPath}/cart/userCart">CART</a>
									</li>
								</sec:authorize>
							</ul>
						</td>
						<td></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</div>



















