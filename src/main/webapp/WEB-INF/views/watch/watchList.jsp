<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/css/home.css"/>' />

<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script type="text/javascript"
	src='<c:url value="/js/itemRESTJson.js"/>'></script>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		<div class="wrapper">
			<div class="clear"></div>
			<div class="items">
				<c:if test="${!empty watches}">
					<c:forEach items="${watches}" var="watch">
						<div class="item">
							<img
								src="${pageContext.request.contextPath}/watch/download/${watch.id}"
								alt="watch" />
							<h2 class="h2">${watch.brend}</h2>
							<p>Model:${watch.model}</p>
							<p>Color:${watch.color}</p>
							<p>
								Price: <em>$ ${watch.price}</em>
							</p>
							<div align="right">
								<table>
									<tr>
										<td><sec:authorize access="hasRole('ROLE_USER')">
												<div>
													<button class="add-to-cart" type="button"
														onclick="addItem('${watch.id}')">Add to cart</button>
												</div>
											</sec:authorize></td>
									</tr>
									<tr>
										<td><sec:authorize access="hasRole('ROLE_ADMIN')">

												<div align="right">
													<table>
														<tr>
															<td><a
																href="${pageContext.request.contextPath}/watch/openEditPage/${watch.id}"><img
																	src="${pageContext.request.contextPath}/img/edit-icon.png"
																	border="0" title="Edit this watch" /></a></td>

															<td><a
																href="${pageContext.request.contextPath}/watch/delete/${watch.id}"
																onclick="return confirm('Are you sure you want to delete this watch?')"><img
																	src="${pageContext.request.contextPath}/img/delete-icon.png"
																	border="0" title="Delete this watch" /></a></td>

														</tr>
													</table>
												</div>
											</sec:authorize></td>
									</tr>
								</table>
							</div>
						</div>
					</c:forEach>
				</c:if>
				<sec:authorize access="hasRole('ROLE_ADMIN')">
					<div class="item">
						<div style="vertical-align: middle; margin-top: 60%">
							<a href="${pageContext.request.contextPath}/watch/openAddPage"><img
								src="${pageContext.request.contextPath}/img/plus.png" border="0"
								title="Add new watch" /></a>
							<p>Add new watch</p>
						</div>
					</div>
				</sec:authorize>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>

