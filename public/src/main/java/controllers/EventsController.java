package controllers;

import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import ru.kpfu.itis.domain.Events;

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

    private final String json="{\n" +
            "\"items\":[\n" +
            "{\n" +
            "\"name\": \"DU voice\",\n" +
            "\"description\": \"Today DU voice being held in 11th home!\",\n" +
            "\"dt\": \"1461746000\"\n" +
            "},\n" +
            "{\n" +
            "\"name\": \"Item_2\",\n" +
            "\"description\": \"Description_2\",\n" +
            "\"dt\": \"1461746000\"\n" +
            "},\n" +
            "{\n" +
            "\"name\": \"Item_3\",\n" +
            "\"description\": \"Description_3\",\n" +
            "\"dt\": \"1461746000\"\n" +
            "},\n" +
            "{\n" +
            "\"name\": \"Item_4\",\n" +
            "\"description\": \"Description_4\",\n" +
            "\"dt\": \"1461746000\"\n" +
            "}\n" +
            "]\n" +
            "}";


    @RequestMapping(value = "/du",method = RequestMethod.GET)
    @ResponseBody
    public String getEvents(int homeNum){
        System.out.println("Номер дома->"+homeNum);

        return json;
    }






}
