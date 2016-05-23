package ru.kpfu.itis.repository;

import ru.kpfu.itis.domain.Events;
import ru.kpfu.itis.domain.Users;
import ru.kpfu.itis.wrappers.EventsWrapper;

import java.util.List;

/**
 * Created by kuzin on 06.05.2016.
 */
public interface EventsRepository {

    void addNewEvent(Events event);

    List<Events> getEventsByHomeNum(Integer homeNum,Long time);

    List<Events> getEventsByAuthor(Users user);

    List<Events> getAllEvents(Long time);

    Events getEventById(Long event_ID);

    void checkIn(Users user,Events event);

    void updateEvent(Events eve);

    List<Events> getHistoryByUser(Users user);

    List<Events> getDUHistoryByUser(Users user);
}
