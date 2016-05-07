package ru.kpfu.itis.repository.impl;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ru.kpfu.itis.domain.Events;
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

    public List<Events> getEventsByHomeNum(Integer homeNum) {
        return sessionFactory.getCurrentSession().createCriteria(Events.class)
                .add(Restrictions.eq("homeNum", homeNum)).list();
    }
}