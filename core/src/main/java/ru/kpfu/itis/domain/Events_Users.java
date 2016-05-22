package ru.kpfu.itis.domain;

import javax.persistence.*;

/**
 * Created by kuzin on 22.05.2016.
 */
@Entity
public class Events_Users {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)

    private Long id;
    @ManyToOne(cascade = {CascadeType.REFRESH},
            fetch = FetchType.LAZY)
    private Events event_id;

    @ManyToOne(cascade = {CascadeType.REFRESH},
            fetch = FetchType.LAZY)
    private Users user_id;

    public Events_Users() {
    }

    public Events getEvent_id() {
        return event_id;
    }

    public void setEvent_id(Events event_id) {
        this.event_id = event_id;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Users getUser_id() {
        return user_id;
    }

    public void setUser_id(Users user_id) {
        this.user_id = user_id;
    }
}
