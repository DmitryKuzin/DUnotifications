package views;

import ru.kpfu.itis.domain.Users;
import ru.kpfu.itis.wrappers.UsersWrapper;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by kuzin on 22.05.2016.
 */
public class DUUsersView implements Serializable {

    public List<UsersWrapper> users;

    public DUUsersView(){}

    public DUUsersView(List<Users> users)
    {
        this.users=new ArrayList<UsersWrapper>();
        for(Users u:users){
            this.users.add(new UsersWrapper(u));
        }
    }

    public List<UsersWrapper> getUsers() {
        return users;
    }

    public void setUsers(List<UsersWrapper> users) {
        this.users = users;
    }
}
