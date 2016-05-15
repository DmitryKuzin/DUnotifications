package ru.kpfu.itis.repository.impl;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ru.kpfu.itis.domain.Users;
import ru.kpfu.itis.repository.UsersRepository;

/**
 * Created by kuzin on 06.05.2016.
 */
@Repository
@Transactional
public class UsersRepositoryImpl  implements UsersRepository {

    @Autowired
    protected SessionFactory sessionFactory;

    public void addNewUser(Users user){
        sessionFactory.getCurrentSession().save(user);
    }

    public Users getUserByLogin(String login) {
        return (Users)sessionFactory.getCurrentSession().createCriteria(Users.class)
                .add(Restrictions.eq("login", login)).uniqueResult();
    }

    public void updateUser(Users user) {
        sessionFactory.getCurrentSession().update(user);
    }
}
