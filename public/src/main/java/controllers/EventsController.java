package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import ru.kpfu.itis.domain.Events;
import ru.kpfu.itis.domain.Users;
import ru.kpfu.itis.service.EventsService;
import ru.kpfu.itis.service.UsersService;
import ru.kpfu.itis.wrappers.EventsWrapper;
import views.DUEventsView;
import views.DUUsersView;

import static utils.FinalVariables.*;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by kuzin on 28.04.2016.
 */
@Controller
@RequestMapping(value = "/events")
public class EventsController extends BaseController{


    @Autowired
    private EventsService eventsService;

    @Autowired
    private UsersService usersService;

    @RequestMapping(value = "/all",method = RequestMethod.GET,headers = {"Accept=application/json"})
    public @ResponseBody DUEventsView getAllEvents() {
        List<Events> events=eventsService.getAllEvents();
        return new DUEventsView(events);
    }


    @RequestMapping(method = RequestMethod.POST,headers = {"Accept=application/json"})
    public @ResponseBody String setNewEvent(@RequestBody EventsWrapper event){

        Events e=event.toEvents();
        Users author=(Users) request.getSession().getAttribute(USER_IN_SESSION);
        if(author!=null) {
            e.setAuthor(author);
        }
        eventsService.addNewEvent(e);

        System.out.println(event.getName());
        System.out.println(event.getDescription());
        System.out.println(event.getDt());
        System.out.println(event.getCurrentParticipantsCount());
        System.out.println(event.getCoordinates_x());
        System.out.println(event.getCoordinates_y());
        System.out.println(event.getMaxParticipansCount());

        return "ok";
    }


    /**
     /events/du(homeNum)
     Этот запрос уже есть, но надо в бд удалить тестовые события и занести мероприятия для каждого дома, список домов я скину
     */
    @RequestMapping(value = "/du{homeNum}",method = RequestMethod.GET,headers = {"Accept=application/json"})
    public @ResponseBody
    DUEventsView getEvents(@PathVariable Integer homeNum){

            Users user= (Users) request.getSession().getAttribute(USER_IN_SESSION);
            List<Events> events=null;
            if(user!=null) {
                events = eventsService.getEventsByHomeNum(3);
            }
        return new DUEventsView(new ArrayList<Events>());
//        return new DUEventsView(events);
    }




     /**
     /events/users(eventID)
     Здесь ты мне должен прислать списки юзеров для этого события
      */
     @RequestMapping(value = "/users{eventID}",method = RequestMethod.GET,headers = {"Accept=application/json"})
     public @ResponseBody
     DUUsersView getUsersByEvent(@PathVariable Integer eventID){
         List<Users> users=null;
         users=usersService.getUsersByEvent(eventID);
         if(users==null){
             System.err.println("ошибка в методе getUsersByEvent где eventID=" +eventID);
             return null;
         }
        return new DUUsersView(users);
     }
     /**
     /events/history/
     Здесь надо будет прислать мне мероприятия, в который пользователь нажал "я приду"
      */
     /**
     /events/du/history/
     Тоже самое, только для ду
      */
     /**
     /events/confirm/
     Здесь ты мне отправляешь рандомный стринг_userID
      */
     /**
     /events/confirm/admin/
     Здесь я отправляю тебе один из рандомных стрингов_ userID, ты на этом пользователе должен поставить статус тип был
     */


    /**
     * /events/my
     Тут ты мне отправляешь все мероприятия, которые создал юзер
     */
    @RequestMapping(value = "/my",method = RequestMethod.GET,headers = {"Accept=application/json"})
    public @ResponseBody
    DUEventsView getEventsByAuthor(String token){
        Users user= (Users) request.getSession().getAttribute(USER_IN_SESSION);
        System.out.println(token);
        List<Events> events = eventsService.getEventsByAuthor(user);
        return new DUEventsView(events);
    }

    /**
     * user's checking in
     */
    @RequestMapping(value = "/willgo",method = RequestMethod.POST,headers = {"Accept=application/json"})
    public @ResponseBody EventsWrapper willGo(String token,Long event_id){


        System.out.println("willgo token: "+token);
        System.out.println("willgo event_id: "+event_id);
        Events eve=eventsService.getEventById(event_id);
        Users u= (Users) request.getSession().getAttribute(USER_IN_SESSION);

        if(u.getToken().equals(token)){
            System.out.println("tokens is equal in willGo method");
        }else{
            System.out.println("tokens is NOT equal in willGo method");
        }

        return new EventsWrapper(eve);
    }

}
