package ru.kpfu.itis.repository.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ru.kpfu.itis.repository.UsersRepository;

/**
 * Created by kuzin on 06.05.2016.
 */
@Repository
@Transactional
public class UsersRepositoryImpl  implements UsersRepository {

    @Autowired
    protected SessionFactory sessionFactory;
}
