package ru.kpfu.itis.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.kpfu.itis.domain.Users;
import ru.kpfu.itis.repository.UsersRepository;
import ru.kpfu.itis.utils.*;

import java.util.List;

/**
 * Created by kuzin on 07.05.2016.
 */
@Service
public class UsersService {

    @Autowired
    private UsersRepository ur;


    public void addNewUser(Users user){
        ur.addNewUser(user);
    }

    //проверка почты и пароля при авторизации
    public Users checkCredentials(Credentials credentials){

        Users user=ur.getUserByLogin(credentials.getEmail());

        if (user!=null){
            System.out.println("user email from checkCredentials"+user.getEmail());
            System.out.println("pass from user: "+credentials.getHash_pass());
            System.out.println("pass from base: "+user.getHash_pass());
            if(user.getHash_pass().equals(credentials.getHash_pass())){
                System.out.println("возвращает пользователя");
                return user;
            }
        }
        return null;
    }

    public Users getUserByLogin(String login){
        return ur.getUserByLogin(login);
    }

    public void updateUser(Users user){
        ur.updateUser(user);
    }

    public List<Users> getUsersByEvent(Long eventID){
        return ur.getUsersByEvent(eventID);
    }

    public Users getUserByToken(String token){return ur.getUserByToken(token);}

    public Users getUserById(Long id){ return ur.getUserById(id);}

}
