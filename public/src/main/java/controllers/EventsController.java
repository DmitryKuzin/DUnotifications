package controllers;

import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import ru.kpfu.itis.domain.Events;
import utils.Event;
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


    @RequestMapping(method = RequestMethod.POST,headers = {"Accept=application/json"})
    public @ResponseBody String setNewEvent(@RequestBody Event event){

        System.out.println(event.eventName);
        System.out.println(event.eventDescription);
        System.out.println(event.eventMaxStudents);

        return "ok";
    }


    @RequestMapping(value = "/du{homeNum}",method = RequestMethod.GET,headers = {"Accept=application/json"})
    public @ResponseBody
    DUEventsView getEvents(@PathVariable Integer homeNum){

            List<Events> events = new ArrayList<Events>();

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


        return new DUEventsView(events);
    }






}
