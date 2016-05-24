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

import java.util.ArrayList;
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

    public void updateEvent(Events eve) {
        sessionFactory.getCurrentSession().update(eve);
    }

    public List<Events> getHistoryByUser(Users user) {
        List<Events_Users> list=null;
        List<Events> events=new ArrayList<Events>();
        list=sessionFactory.getCurrentSession().createCriteria(Events_Users.class).add(Restrictions.eq("user_id",user)).list();
        if(list!=null) {
            for (Events_Users eu : list) {
                if(eu.getEvent_id().getHomeNum()==null){
                    events.add(eu.getEvent_id());
                }
            }
        }
        return events;
    }

    public List<Events> getDUHistoryByUser(Users user) {
        List<Events_Users> list=null;
        List<Events> events=new ArrayList<Events>();
        list=sessionFactory.getCurrentSession().createCriteria(Events_Users.class).add(Restrictions.eq("user_id",user)).list();
        if(list!=null) {
            for (Events_Users eu : list) {
                if(eu.getEvent_id().getHomeNum()!=null){
                    events.add(eu.getEvent_id());
                }
            }
        }
        return events;
    }

    public List<Events> getEventsByHomeNum(Integer homeNum,Long time) {
        return sessionFactory.getCurrentSession().createCriteria(Events.class)
                .add(Restrictions.eq("homeNum", homeNum)).add(Restrictions.gt("dt",time)).list();
    }

    public List<Events> getEventsByAuthor(Users user) {
        return sessionFactory.getCurrentSession().createCriteria(Events.class).add(Restrictions.eq("author",user)).list();
    }

    public List<Events> getAllEvents(Long time){
        List<Events> events=sessionFactory.getCurrentSession().createCriteria(Events.class).add(Restrictions.gt("dt",time)).list();
        List<Events> result=new ArrayList<Events>();
        for(Events e:events){
            if(e.getHomeNum()==null){
                result.add(e);
            }
        }
        return result;
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
