package views;

import ru.kpfu.itis.domain.Users;

import java.io.Serializable;
import java.util.List;

/**
 * Created by kuzin on 22.05.2016.
 */
public class DUUsersView implements Serializable {

    public List<Users> users;

    public DUUsersView(){}

    public DUUsersView(List<Users> users) {
        this.users = users;
    }

    public List<Users> getUsers() {
        return users;
    }

    public void setUsers(List<Users> users) {
        this.users = users;
    }
}
