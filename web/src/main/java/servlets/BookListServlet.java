package servlets;

import java.io.IOException;
import java.util.List;

import com.model.Book;

import DAO.BookDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/BookListServlet")
public class BookListServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Book> books = new BookDAO().getAllBooks();
        request.setAttribute("bookList", books);
        request.getRequestDispatcher("user/home.jsp").forward(request, response);
    }
}
