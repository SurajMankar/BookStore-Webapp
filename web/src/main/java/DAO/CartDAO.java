package DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.model.Cart;
import com.model.User;

public class CartDAO {
    private SessionFactory factory = new Configuration().configure().buildSessionFactory();

    public void addToCart(Cart cart) {
        Session session = factory.openSession();
        Transaction tx = session.beginTransaction();
        session.save(cart);
        tx.commit();
        session.close();
    }

    public List<Cart> getUserCart(User user) {
        Session session = factory.openSession();
        Query<Cart> query = session.createQuery("from Cart where user = :user", Cart.class);
        query.setParameter("user", user);
        List<Cart> list = query.list();
        session.close();
        return list;
    }
    
    public void removeFromCart(int userId, int bookId) {
        Session session = factory.openSession();
        Transaction tx = session.beginTransaction();

        Query<Cart> query = session.createQuery(
            "from Cart where user.id = :userId and book.id = :bookId", Cart.class);
        query.setParameter("userId", userId);
        query.setParameter("bookId", bookId);

        List<Cart> result = query.list();
        for (Cart c : result) {
            session.delete(c);
        }

        tx.commit();
        session.close();
    }

}
