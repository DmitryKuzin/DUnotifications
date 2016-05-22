package ru.kpfu.itis.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.kpfu.itis.domain.Events;
import ru.kpfu.itis.domain.Users;
import ru.kpfu.itis.repository.EventsRepository;

import java.util.Date;
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

    public List<Events> getEventsByHomeNum(Integer homeNum){
        //TODO хардкод
        return er.getEventsByHomeNum(homeNum,System.currentTimeMillis()-(15L*60L*1000L));
    }

    public List<Events> getEventsByAuthor(Users user){
        return er.getEventsByAuthor(user);
    }

    public List<Events> getAllEvents(){
        Long time=(System.currentTimeMillis()-(15L*60L*1000L))/1000L;
        System.out.println("текущее время в миллисекундах: "+time);
        return er.getAllEvents(time);
    }

    public Events getEventById(Long event_ID){
        System.out.println("eventsService event_ID:"+event_ID);
        return er.getEventById(event_ID);
    }

    public void checkIn(Users user,Events event){

    }

}
