package ua.kris.forge.repository;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ua.kris.forge.domain.BodyArmor;

import java.util.List;

@Repository
@Transactional
public class BodyArmorRepository {
    @Autowired
    private SessionFactory sessionFactory;

    public void addBodyArmor(BodyArmor bodyArmor) {
        this.sessionFactory.getCurrentSession().save(bodyArmor);
    }

    public List listAll() {
        return this.sessionFactory.getCurrentSession().createQuery("from BodyArmor").list();
    }

    public void removeBodyArmor(Integer id) {
        BodyArmor contact = (BodyArmor) this.sessionFactory.getCurrentSession().load(
                BodyArmor.class, id);
        if (null != contact) {
            this.sessionFactory.getCurrentSession().delete(contact);
        }
    }
}
