package DAO;


import com.model.User;
import org.hibernate.*;
import org.hibernate.cfg.Configuration;

public class UserDAO {
    private static SessionFactory factory = new Configuration().configure().buildSessionFactory();

    public void register(User user) {
        Session session = factory.openSession();
        Transaction tx = session.beginTransaction();
        session.save(user);
        tx.commit();
        session.close();
    }

    public User login(String email, String password) {
        Session session = factory.openSession();
        Query<User> query = session.createQuery("FROM User WHERE email=:e AND password=:p", User.class);
        query.setParameter("e", email);
        query.setParameter("p", password);
        User user = query.uniqueResult();
        session.close();
        return user;
    }
}

