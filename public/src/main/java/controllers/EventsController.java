package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import ru.kpfu.itis.domain.Events;
import ru.kpfu.itis.domain.Events_Users;
import ru.kpfu.itis.domain.Users;
import ru.kpfu.itis.service.EventsService;
import ru.kpfu.itis.service.UsersService;
import ru.kpfu.itis.utils.TokenRenderer;
import ru.kpfu.itis.wrappers.EventsWrapper;
import views.DUEventsView;
import views.DUUsersView;
import views.WillGoRequestBody;

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
            System.out.println(author.getEmail());
            e.setAuthor(author);
        }
        eventsService.addNewEvent(e);

        System.out.println(event.getName());
        System.out.println(event.getDescription());
        System.out.println(event.getDt());
        System.out.println(event.getCurrentParticipantsCount());
        System.out.println(event.getPlace());
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
    @RequestMapping(value = "/history",method = RequestMethod.GET,headers = {"Accept=application/json"})
    public @ResponseBody DUEventsView getHistory(String token){

        return new DUEventsView(eventsService.getHistoryByUserToken(token));
    }
     /**
     /events/du/history/
     Тоже самое, только для ду
      */
     @RequestMapping(value = "/du/history",method = RequestMethod.GET,headers = {"Accept=application/json"})
     public @ResponseBody DUEventsView getDUHistory(String token){

         return new DUEventsView(eventsService.getDUHistoryByUserToken(token));
     }
     /**
     /events/confirm/
     Здесь ты мне отправляешь рандомный стринг_userID
      */
     @RequestMapping(value = "/confirm",method = RequestMethod.GET,headers = {"Accept=application/json"})
     public @ResponseBody String getRandomString(String token){

         Users u=usersService.getUserByToken(token);
         return TokenRenderer.make(10,u.getId());
     }

     /**
     /events/confirm/admin/
     Здесь я отправляю тебе один из рандомных стрингов_ userID, ты на этом пользователе должен поставить статус тип был
     */
    @RequestMapping(value = "/confirm/admin",method = RequestMethod.POST,headers = {"Accept=application/json"})
    public @ResponseBody String checkUserIn(String randomString){
        Long user_id=new Long(randomString.substring(randomString.indexOf("_")));
        System.out.println(user_id);
        //TODO доделай это
        return "";
    }

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
    public @ResponseBody EventsWrapper willGo(@RequestBody WillGoRequestBody rb){

        Events eve=eventsService.getEventById(rb.getEvent_id());
        Integer count=eve.getCurrentParticipantsCount();
        if(count==null){
            count=0;
        }
        System.out.println("from willgo");
        Users u= usersService.getUserByToken(rb.getToken());

        //не дает добавить пользователя в мероприятие второй раз

        List<Users> users=usersService.getUsersByEvent(eve.getId().intValue());
        for(Users user: users){

            if(user.getId().equals(u.getId())){
                System.out.println("id равны!!!!!!");
                return new EventsWrapper(eve);
            }
        }
        eve.setCurrentParticipantsCount(++count);
        eventsService.updateEvent(eve);
        eventsService.checkIn(u,eve);

        return new EventsWrapper(eve);
    }

}
