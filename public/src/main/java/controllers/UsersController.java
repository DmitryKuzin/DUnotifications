package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import ru.kpfu.itis.service.UsersService;
import ru.kpfu.itis.utils.*;

/**
 * Created by kuzin on 07.05.2016.
 */
@Controller
@RequestMapping(value = "/users")
public class UsersController {

    @Autowired
    private UsersService usersService;

    //registration
//    @RequestMapping(method = RequestMethod.POST,headers = {"Accept=application/json"})
//    public @ResponseBody
//    String addNewUser(@RequestBody UserInfo user){
//
//        usersService.addNewUser(user.toUsers());
//
//        return "ok";
//    }


    //проверка логина и пароля на совпадение с бд
//    @RequestMapping(value = "/check",method = RequestMethod.POST,headers = {"Accept=application/json"})
//    public @ResponseBody
//    String checkCredentials(@RequestBody Credentials creds){
//
//
//        //не упусти иньекцию
//        if(usersService.checkCredentials(creds)){
//            return "ok";
//        }
//        return "not ok";
//    }
}
