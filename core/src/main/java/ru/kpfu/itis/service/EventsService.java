package ru.kpfu.itis.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.kpfu.itis.domain.Events;
import ru.kpfu.itis.domain.Users;
import ru.kpfu.itis.repository.EventsRepository;

import java.util.List;

/**
 * Created by kuzin on 07.05.2016.
 */
@Service
public class EventsService {

    @Autowired
    private EventsRepository er;


    public void addNewEvent(Events event){
        er.addNewEvent(event);
    }

    public List<Events> getEventsByHomeNum(Integer homeNum, Users user){
        return er.getEventsByHomeNum(homeNum,user);
    }
}
