package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import ru.kpfu.itis.domain.Users;
import ru.kpfu.itis.service.UsersService;
import ru.kpfu.itis.utils.*;
import ru.kpfu.itis.wrappers.UsersWrapper;
import utils.SHAEncoder;
import static utils.FinalVariables.*;

import static ru.kpfu.itis.utils.TokenRenderer.*;
import static utils.SHAEncoder.encode;

/**
 * Created by kuzin on 07.05.2016.
 */
@Controller
public class UsersController extends BaseController {

    @Autowired
    private UsersService usersService;

    //registration
    @RequestMapping(value = "/signup",method = RequestMethod.POST,headers = {"Accept=application/json"})
    public @ResponseBody
    UsersWrapper addNewUser(@RequestBody UsersWrapper u){
        Users user=u.toUsers();

        user.setHash_pass(encode(user.getHash_pass()));

        System.out.println("addNewUser method");
        System.out.println("new user info:");
        System.out.println(user.getEmail());
        System.out.println(user.getHash_pass());

        if(usersService.checkCredentials(new Credentials(user.getEmail(),user.getHash_pass()))!=null){
            System.out.println("Зарегистрированный пользователь пытался зарегистрироваться вновь!");
            return null;
        }

        user.setRole(Roles.ROLE_USER.toString());
        user.setToken(make(Roles.ROLE_USER.toString()));
        usersService.addNewUser(user);
        request.getSession().setAttribute(USER_IN_SESSION,user);
        return new UsersWrapper(user);
    }

}
