package ru.kpfu.itis.repository.impl;

import org.hibernate.NonUniqueResultException;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ru.kpfu.itis.domain.Events;
import ru.kpfu.itis.domain.Events_Users;
import ru.kpfu.itis.domain.Users;
import ru.kpfu.itis.repository.UsersRepository;

import java.util.ArrayList;
import java.util.List;

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

    public Users getUserByLogin(String login)  {
        Users user=null;
        try {
            user = (Users) sessionFactory.getCurrentSession().createCriteria(Users.class)
                    .add(Restrictions.eq("email", login)).uniqueResult();

        }catch (NonUniqueResultException nonUniq){
            System.out.println("Таких пользователей несколько!!!!!");
        }
        return user;
    }

    public void updateUser(Users user) {
        sessionFactory.getCurrentSession().update(user);
    }

    public List<Users> getUsersByEvent(Long eventID) {
        Events e= (Events) sessionFactory.getCurrentSession().createCriteria(Events.class).add(Restrictions.eq("id",eventID)).uniqueResult();
        System.out.println(e.getName());
        System.out.println(e.getName());
        System.out.println(e.getName());
        System.out.println(e.getName());
        System.out.println(e.getName());
        System.out.println(e.getName());
        System.out.println(e.getName());
        System.out.println(e.getName());
        System.out.println(e.getName());
        System.out.println(e.getName());

        List<Users> users=new ArrayList<Users>();
        List<Events_Users> eu=sessionFactory.getCurrentSession().createCriteria(Events_Users.class).
                add(Restrictions.eq("event_id",e)).list();
        for(Events_Users evus:eu){
            users.add((Users) sessionFactory.getCurrentSession().load(Users.class,evus.getUser_id().getId()));
        }
        return users;
    }

    public Users getUserById(Long id){
        return (Users) sessionFactory.getCurrentSession().load(Users.class, id);
    }

    public Users getUserByToken(String token) {
        return (Users) sessionFactory.getCurrentSession().createCriteria(Users.class).add(Restrictions.eq("token",token)).uniqueResult();
    }
}
