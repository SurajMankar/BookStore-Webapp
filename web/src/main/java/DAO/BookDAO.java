package DAO;

import com.model.Book;
import java.util.List;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.hibernate.Session;
public class BookDAO {

	private static final SessionFactory factory = new Configuration().configure().buildSessionFactory();


    public void saveBook(Book book) {
        try (Session session = factory.openSession()) {
            Transaction tx = session.beginTransaction();
            session.persist(book);  // recommended instead of save
            tx.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Book> getAllBooks() {
        try (Session session = factory.openSession()) {
            Query<Book> query = session.createQuery("FROM Book", Book.class);
            return query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public Book getBookById(int id) {
        try (Session session = factory.openSession()) {
            return session.get(Book.class, id);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void updateBook(Book book) {
        try (Session session = factory.openSession()) {
            Transaction tx = session.beginTransaction();
            session.merge(book);  // preferred over update
            tx.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteBook(int id) {
        try (Session session = factory.openSession()) {
            Transaction tx = session.beginTransaction();
            Book book = session.get(Book.class, id);
            if (book != null) {
                session.remove(book);  // remove is preferred over delete
            }
            tx.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
