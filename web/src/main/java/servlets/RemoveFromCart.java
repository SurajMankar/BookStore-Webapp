package servlets;

import java.io.IOException;

import com.model.Cart;
import com.model.User;

import DAO.CartDAO;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/RemoveFromCart")
public class RemoveFromCart extends HttpServlet{
	
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
		int bookId = Integer.parseInt(req.getParameter("bookId"));

        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");

        if (user != null) {
            int userId = user.getId();
            new CartDAO().removeFromCart(userId, bookId);  // or pass cartId if using ID
        }

        res.sendRedirect("ViewCartServlet");
		
	}

}
