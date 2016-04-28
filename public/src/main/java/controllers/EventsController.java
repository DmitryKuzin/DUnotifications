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

    private final String json="{\n" +
            "\"items\":[\n" +
            "{\n" +
            "\"name\": \"Голос ДУ\",\n" +
            "\"description\": \"Сегодня в доме 11а состоится Голос ДУ\",\n" +
            "\"dt\": \"1461744000\"\n" +
            "},\n" +
            "{\n" +
            "\"name\": \"Item_2\",\n" +
            "\"description\": \"Description_2\",\n" +
            "\"dt\": \"1461744000\"\n" +
            "},\n" +
            "{\n" +
            "\"name\": \"Item_3\",\n" +
            "\"description\": \"Description_3\",\n" +
            "\"dt\": \"1461744000\"\n" +
            "},\n" +
            "{\n" +
            "\"name\": \"Item_4\",\n" +
            "\"description\": \"Description_4\",\n" +
            "\"dt\": \"1461744000\"\n" +
            "}\n" +
            "]\n" +
            "}";


    @RequestMapping(value = "/du",method = RequestMethod.GET)
    @ResponseBody
    public String getEvents(int homeNum){
        System.out.println(homeNum);

        return json;
    }




}
