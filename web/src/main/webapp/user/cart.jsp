<%@page import="org.apache.jasper.compiler.Node.IncludeDirective"%>
<%@ page import="com.model.Cart"%>
<%@ page import="java.util.List"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Cart</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<%@ include file="navbar.jsp"%>
	<div class="container my-4">
		<h2 class="text-center mb-4">Your Shopping Cart</h2>

		<%
		List<Cart> cartList = (List<Cart>) request.getAttribute("cartList");
		double total = 0;
		if (cartList != null && !cartList.isEmpty()) {
		%>

		<table class="table table-bordered table-striped table-hover">
			<thead class="table-dark">
				<tr>
					<th>Book</th>
					<th>Quantity</th>
					<th>Price</th>
					<th>Subtotal (₹)</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<%
				for (Cart c : cartList) {
					double sub = c.getBook().getPrice() * c.getQuantity();
					total += sub;
				%>
				<tr>
					<td><%=c.getBook().getTitle()%></td>
					<td><%=c.getQuantity()%></td>
					<td><%=c.getBook().getPrice()%></td>
					<td><%=sub%></td>
					<td>
						<form method="post" action="RemoveFromCart"
							onsubmit="return confirm('Remove this item from cart?');">
							<input type="hidden" name="bookId"
								value="<%=c.getBook().getId()%>" />
							<button type="submit" class="btn btn-sm btn-danger">Remove</button>
						</form>
					</td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>

		<div class="text-end">
			<h4 class="text-success">
				Grand Total:
				<%=total%></h4>
			<a href="CheckoutServlet" class="btn btn-success">Proceed to
				Checkout</a>
		</div>

		<%
		} else {
		%>
		<div class="alert alert-info text-center">Your cart is empty.</div>
		<%
		}
		%>
	</div>

	<!-- Bootstrap JS (optional) -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
