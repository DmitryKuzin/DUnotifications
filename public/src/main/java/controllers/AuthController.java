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
import static ru.kpfu.itis.utils.TokenRenderer.*;

/**
 * Created by kuzin on 15.05.2016.
 */
@Controller
public class AuthController {

    @Autowired
    private UsersService usersService;

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public @ResponseBody Users authrorize(@RequestBody Credentials credentials){

        System.out.println("authrorize()");
        System.out.println("credentials:");
        System.out.println(credentials.getEmail());
        System.out.println(credentials.getHash_pass());


        Users user=usersService.checkCredentials(credentials);

        if(user==null){
            return null;
        }

        String access_token=make(user.getRole());
        user.setToken(access_token);
        usersService.updateUser(user);
        System.out.println(access_token);
        return user;
    }

}
