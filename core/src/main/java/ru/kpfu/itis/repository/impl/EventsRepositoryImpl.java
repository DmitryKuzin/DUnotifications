package ru.kpfu.itis.repository.impl;

import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ru.kpfu.itis.domain.Events;
import ru.kpfu.itis.domain.Events_Users;
import ru.kpfu.itis.domain.Users;
import ru.kpfu.itis.repository.EventsRepository;

import java.util.List;

/**
 * Created by kuzin on 06.05.2016.
 */
@Repository
@Transactional
public class EventsRepositoryImpl implements EventsRepository {

    @Autowired
    protected SessionFactory sessionFactory;

    public void addNewEvent(Events event) {
        sessionFactory.getCurrentSession().save(event);
    }

    public List<Events> getEventsByHomeNum(Integer homeNum,Long time) {
        return sessionFactory.getCurrentSession().createCriteria(Events.class)
                .add(Restrictions.eq("homeNum", homeNum)).add(Restrictions.ge("dt",time)).list();
    }

    public List<Events> getEventsByAuthor(Users user) {
        return sessionFactory.getCurrentSession().createCriteria(Events.class).add(Restrictions.eq("author",user)).list();
    }

    public List<Events> getAllEvents(Long time){
        return sessionFactory.getCurrentSession().createCriteria(Events.class).add(Restrictions.gt("dt",time)).list();
    }

    public Events getEventById(Long event_ID) {
        return (Events) sessionFactory.getCurrentSession().load(Events.class,event_ID);
    }
    public void checkIn(Users user,Events event){
        Events_Users eu=new Events_Users();
        eu.setEvent_id(event);
        eu.setUser_id(user);
        sessionFactory.getCurrentSession().save(eu);
    }
}
