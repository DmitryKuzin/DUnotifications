package ru.kpfu.itis.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.kpfu.itis.domain.Users;
import ru.kpfu.itis.repository.UsersRepository;
import ru.kpfu.itis.utils.*;

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

    public boolean checkCredentials(Credentials credentials){
        //TODO if exception check here
        if (ur.getUserByLogin(credentials.getLogin())!=null){
            return false;
        }
        return true;
    }
}
