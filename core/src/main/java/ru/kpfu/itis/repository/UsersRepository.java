package ru.kpfu.itis.repository;

import ru.kpfu.itis.domain.Users;
import ru.kpfu.itis.utils.Credentials;

/**
 * Created by kuzin on 06.05.2016.
 */
public interface UsersRepository {

    void addNewUser(Users user);

    Users getUserByLogin(String login);

}
