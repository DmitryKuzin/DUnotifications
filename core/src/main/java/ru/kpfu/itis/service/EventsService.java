package ru.kpfu.itis.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.kpfu.itis.domain.Events;
import ru.kpfu.itis.domain.Users;
import ru.kpfu.itis.repository.EventsRepository;
import ru.kpfu.itis.repository.UsersRepository;

import java.util.Date;
import java.util.List;

/**
 * Created by kuzin on 07.05.2016.
 */
@Service
public class EventsService {

    @Autowired
    private EventsRepository er;

    @Autowired
    private UsersRepository ur;


    public void addNewEvent(Events event){
        er.addNewEvent(event);
    }

//    public List<Events> getEventsByHomeNum(Integer homeNum){
//        //TODO хардкод
//        Long time=(System.currentTimeMillis()-(15L*60L*1000L))/1000L;
//        return er.getEventsByHomeNum(homeNum,time);
//    }

    public List<Events> getEventsByHomeNum(String homeNum){
        //TODO хардкод
        Long time=(System.currentTimeMillis()-(15L*60L*1000L))/1000L;
        return er.getEventsByHomeNum(homeNum,time);
    }

    public List<Events> getEventsByAuthor(String token){
        Users u=ur.getUserByToken(token);
        System.out.println(u.getId());
        System.out.println(u.getId());
        System.out.println(u.getId());
        System.out.println(u.getFio());
        System.out.println(u.getEmail());

        return er.getEventsByAuthor(u);
    }

    public List<Events> getAllEvents(){
        Long time=(System.currentTimeMillis()-(15L*60L*1000L))/1000L;
        return er.getAllEvents(time);
    }

    public Events getEventById(Long event_ID){
        System.out.println("eventsService event_ID:"+event_ID);
        return er.getEventById(event_ID);
    }

    public void checkIn(Users user,Events event){
        er.checkIn(user,event);
    }

    public void updateEvent(Events eve){
        er.updateEvent(eve);
    }

    public List<Events> getHistoryByUserToken(String token){
        Users u=ur.getUserByToken(token);

        return er.getHistoryByUser(u);
    }

    public List<Events> getDUHistoryByUserToken(String token){
        Users u=ur.getUserByToken(token);

        return er.getDUHistoryByUser(u);
    }

}
