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

    @ResponseBody
    public String getPage(){
        return "ok";
    }


    @RequestMapping(value = "/du{homeNum}",method = RequestMethod.GET,headers = {"Accept=application/json"})
    public @ResponseBody
    DUEventsView getEvents(@PathVariable Integer homeNum){

        List<Events> listEvents=new ArrayList<Events>();
        Events event=new Events();
        event.setName("Голос ДУ");
        event.setDescription("Сегодня в доме 11а состоится Голос ДУ!");
        event.setDt(UnixDateConverter.milisToSecs(new Date().getTime()));
        Events event2=new Events();
        event2.setName("Идем в кино на первого мстителя");
        event2.setDescription("Если вы хотите сходить завтра вечером на премьеру фильма первый мститель гражданская война, напишите мне на почту potter@hogwards.wiz");
        event2.setDt(UnixDateConverter.milisToSecs(new Date(new Date().getTime()+1000L).getTime()));
        Events event3=new Events();
        event3.setName("Item_3");
        event3.setDescription("Description_3");
        event3.setDt(UnixDateConverter.milisToSecs(new Date(new Date().getTime()+1000L).getTime()));
        Events event4=new Events();
        event4.setName("Item_4");
        event4.setDescription("Description_4");
        event4.setDt(UnixDateConverter.milisToSecs(new Date(new Date().getTime()+1000L).getTime()));

        listEvents.add(event);
        listEvents.add(event2);
    

        return new DUEventsView(listEvents);
    }






}
