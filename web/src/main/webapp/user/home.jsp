<%@ page import="com.model.Book"%>
<%@ page import="java.util.List"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Store</title>
<!-- Bootstrap CSS CDN -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.book-card {
	transition: transform 0.2s, box-shadow 0.2s;
}

.book-card:hover {
	transform: translateY(-5px);
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
}

.book-img {
	height: 200px;
	object-fit: cover;
}
</style>
</head>
<body>
	<%@ include file="navbar.jsp"%>
	<div class="container my-4">
		<h2 class="text-center mb-4">Available Books</h2>
		<div class="row">

			<% 
    List<Book> bookList = (List<Book>) request.getAttribute("bookList");
    if (bookList != null && !bookList.isEmpty()) {
        for (Book b : bookList) {
%>
			<div class="col-md-4 mb-4">
				<div class="card book-card h-100">
					<img src="<%= b.getImage() %>" class="card-img-top book-img"
						alt="Book Cover">
					<div class="card-body d-flex flex-column">
						<h5 class="card-title"><%= b.getTitle() %></h5>
						<p class="card-text text-muted">
							by
							<%= b.getAuthor() %></p>
						<p class="card-text fw-bold">
							₹<%= b.getPrice() %></p>
						<form method="post" action="AddToCartServlet" class="mt-auto">
							<input type="hidden" name="bookId" value="<%= b.getId() %>" />
							<div class="input-group mb-2">
								<input type="number" name="quantity" class="form-control"
									value="1" min="1" max="<%= b.getQuantity() %>" required>
								<span class="input-group-text">Qty</span>
							</div>
							<button type="submit" class="btn btn-primary w-100">Add
								to Cart</button>
						</form>
					</div>
				</div>
			</div>
			<%
        }
    } else {
%>
			<div class="col-12">
				<div class="alert alert-info text-center">No books available
					right now.</div>
			</div>
			<%
    }
%>

		</div>
	</div>

	<!-- Bootstrap JS (optional for some interactivity) -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
