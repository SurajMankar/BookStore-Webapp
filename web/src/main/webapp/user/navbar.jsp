<%@ page session="false" %>
<%@ page import="com.model.User" %>

<style>
    nav {
        background-color: #333;
        padding: 10px;
    }
    nav a {
        color: white;
        margin-right: 15px;
        text-decoration: none;
    }
    nav a:hover {
        text-decoration: underline;
    }
</style>

<nav>
    <a href="/web/BookListServlet">Books</a>
    <a href="/web/ViewCartServlet">Cart</a>
    <span style="float:right">
        <a href="/web/index.jsp">Logout</a>
    </span>
</nav>
