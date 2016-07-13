package ua.kris.forge.repository;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ua.kris.forge.domain.Order;

import java.util.List;

@Repository
@Transactional
public class OrderRepository {
    @Autowired
    private SessionFactory sessionFactory;

    public void addOrder(Order order) {
        this.sessionFactory.getCurrentSession().save(order);
    }

    public List listAll() {
        return this.sessionFactory.getCurrentSession().createQuery("from Order ").list();
    }

    public void removeOrder(Integer id) {
        Order contact = (Order) this.sessionFactory.getCurrentSession().load(
                Order.class, id);
        if (null != contact) {
            this.sessionFactory.getCurrentSession().delete(contact);
        }
    }
}
