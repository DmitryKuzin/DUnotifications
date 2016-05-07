package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import ru.kpfu.itis.domain.Events;
import ru.kpfu.itis.service.EventsService;
import ru.kpfu.itis.utils.*;
import ru.kpfu.itis.wrappers.EventsWrapper;
import views.DUEventsView;

import java.util.List;

/**
 * Created by kuzin on 28.04.2016.
 */
@Controller
@RequestMapping(value = "/events")
public class EventsController {


    @Autowired
    private EventsService eventsService;

    @RequestMapping(method = RequestMethod.POST,headers = {"Accept=application/json"})
    public @ResponseBody String setNewEvent(@RequestBody EventsWrapper event){

        eventsService.addNewEvent(event.toEvents());

        System.out.println(event.getName());
        System.out.println(event.getDescription());
        System.out.println(event.getDt());
        System.out.println(event.getCurrentParticipantsCount());
        System.out.println(event.getCoordinates_x());
        System.out.println(event.getCoordinates_y());
        System.out.println(event.getMaxParticipansCount());

        return "ok";
    }


    @RequestMapping(value = "/du{homeNum}",method = RequestMethod.GET,headers = {"Accept=application/json"})
    public @ResponseBody
    DUEventsView getEvents(@PathVariable Integer homeNum){

            List<Events> events = eventsService.getEventsByHomeNum(3);



//            Events event = new Events();
//            event.setName("Голос ДУ");
//            event.setDescription("Сегодня в доме 11а состоится Голос ДУ!");
//            event.setDt(UnixDateConverter.milisToSecs(new Date().getTime()) + 1000L);
//            Events event2 = new Events();
//            event2.setName("Идем в кино на первого мстителя");
//            event2.setDescription("Если вы хотите сходить завтра вечером на премьеру фильма первый мститель гражданская война, напишите мне на почту potter@hogwards.wiz");
//            event2.setDt(UnixDateConverter.milisToSecs(new Date().getTime()) + 87000L);
//            events.add(event);
//            events.add(event2);


        return new DUEventsView(events);
    }






}
