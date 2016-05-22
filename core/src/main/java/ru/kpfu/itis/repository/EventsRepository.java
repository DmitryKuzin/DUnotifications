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

    List<Events> getEventsByHomeNum(Integer homeNum,Users user);
}
