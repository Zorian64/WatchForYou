<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shopping cart</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script type="text/javascript" src='<c:url value="/js/RESTJson.js"/>'></script>
<script
	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script type="text/javascript" src='<c:url value="/js/cart.js"/>'></script>

<link rel='stylesheet prefetch'
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'>

<link rel="stylesheet" href='<c:url value="/css/cart.css"/>'>

</head>
<body>
	<header id="site-header">
		<div class="container">
			<h1>
				Shopping cart <span>[</span> <em><a
					href="${pageContext.request.contextPath}/index" target="_blank">Watch For You</a></em> <span class="last-span is-open">]</span>
			</h1>
		</div>
	</header>
	<div class="container">
		<c:if test="${!empty items}">
			<c:forEach items="${items}" var="item">
				<section id="cart">
					<article class="product">
						<header>
							<a class="remove"  >
								 <img
								src="${pageContext.request.contextPath}/watch/download/${item.watch.id}"
								alt="">
								<h3>Remove watch</h3>
							</a>
						</header>
						<div class="content">
							<h1>Watch description</h1>
							<h2 class="h2">${item.watch.brend}</h2>
							<p>Model:${item.watch.model},Color:${item.watch.color},${item.id}</p>
							
							<div
								title="You have selected this product to be shipped in the color yellow."
								style="top: 0" class="color yellow"></div>
<!-- 							<div style="top: 43px" class="type small">XXL</div> -->
						</div>
						<footer class="content">
							<span class="qt-minus">-</span> <span class="qt">1</span> <span
								class="qt-plus">+</span>
							<h2 class="full-price">${item.watch.price}$</h2>
							<h2 class="price" title="Price">${item.watch.price}$</h2>
						</footer>
					</article>
				</section>
			</c:forEach>
		</c:if>
	</div>
	<footer id="site-footer">
		<div class="container clearfix">
			<div class="left">
				<h2 class="subtotal">
					Subtotal: <span>0</span>$
				</h2>
				<h3 class="tax">
					Taxes (5%): <span>0</span>$
				</h3>
				<h3 class="shipping">
					Shipping: <span>0</span>$
				</h3>
			</div>
			<div class="right">
				<h1 class="total">
					Total: <span>0</span>$
				</h1>
				<a class="btn">Checkout</a>
			</div>
		</div>
	</footer>
</body>
</html>
