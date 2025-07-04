package servlets;




import java.io.IOException;
import java.util.List;
import com.model.Cart;
import com.model.User;
import DAO.CartDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/ViewCartServlet")
public class ViewCartServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        List<Cart> cartList = new CartDAO().getUserCart(user);
        request.setAttribute("cartList", cartList);
        request.getRequestDispatcher("user/cart.jsp").forward(request, response);
    }
}
