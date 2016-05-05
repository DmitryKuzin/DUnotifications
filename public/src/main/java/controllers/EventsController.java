package controllers;

import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import ru.kpfu.itis.domain.Events;
import utils.UnixDateConverter;
import views.DUEventsView;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by kuzin on 28.04.2016.
 */
@Controller
@RequestMapping(value = "/events")
public class EventsController {


    private List<Events> events;

    @RequestMapping(method = RequestMethod.POST,headers = {"Accept=application/json"})
    public @ResponseBody String setNewEvent(String eventName,String eventDescription,Integer eventMaxStudents,Long eventTime){

        if(events==null){
            events=new ArrayList<Events>();
        }


        Events event=new Events();
        if(eventName!=null) {
            System.out.println(eventName);
            event.setName(eventName);
        }
        if(eventDescription!=null) {
            System.out.println(eventDescription);
            event.setDescription(eventDescription);
        }
        if(eventMaxStudents!=null) {
            System.out.println(eventMaxStudents);
            event.setMaxParticipansCount(eventMaxStudents);
        }
        if(eventTime!=null) {
            System.out.println(eventTime);
            event.setDt(eventTime);
        }
        events.add(event);
        return "ok";
    }


    @RequestMapping(value = "/du{homeNum}",method = RequestMethod.GET,headers = {"Accept=application/json"})
    public @ResponseBody
    DUEventsView getEvents(@PathVariable Integer homeNum){
        if(events==null) {
            events = new ArrayList<Events>();

            Events event = new Events();
            event.setName("Голос ДУ");
            event.setDescription("Сегодня в доме 11а состоится Голос ДУ!");
            event.setDt(UnixDateConverter.milisToSecs(new Date().getTime()) + 1000L);
            Events event2 = new Events();
            event2.setName("Идем в кино на первого мстителя");
            event2.setDescription("Если вы хотите сходить завтра вечером на премьеру фильма первый мститель гражданская война, напишите мне на почту potter@hogwards.wiz");
            event2.setDt(UnixDateConverter.milisToSecs(new Date().getTime()) + 87000L);


            events.add(event);
            events.add(event2);
        }

        return new DUEventsView(events);
    }






}
