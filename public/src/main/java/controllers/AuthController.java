package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import ru.kpfu.itis.domain.Users;
import ru.kpfu.itis.service.UsersService;
import ru.kpfu.itis.utils.Credentials;
import ru.kpfu.itis.wrappers.UsersWrapper;

import static ru.kpfu.itis.utils.TokenRenderer.*;

/**
 * Created by kuzin on 15.05.2016.
 */
@Controller
public class AuthController {

    @Autowired
    private UsersService usersService;

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public @ResponseBody
    UsersWrapper authrorize(@RequestBody Credentials credentials){

        System.out.println("authrorize()");
        System.out.println("credentials:");
        System.out.println(credentials.getEmail());
        System.out.println(credentials.getHash_pass());

        System.out.println("1");
        Users user=usersService.checkCredentials(credentials);
        System.out.println("2");
        if(user==null){
            return null;
        }
        System.out.println("3");
        String access_token=make(user.getRole());
        System.out.println("4");
        user.setToken(access_token);
        System.out.println("5");
        usersService.updateUser(user);
        System.out.println("6");
        System.out.println(access_token);
        return new UsersWrapper(user);
    }

}
