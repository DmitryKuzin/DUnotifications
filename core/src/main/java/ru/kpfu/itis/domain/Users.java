package ru.kpfu.itis.domain;

import javax.persistence.*;
import java.util.List;

/**
 * Created by kuzin on 28.04.2016.
 */
@Entity
public class Users {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String username;

    private String fio;

    private String email;

    private String address;

    private String hash_pass;

    private String avatar;

    private String role;

    private String token;

    private int rating;

    @OneToMany(cascade = CascadeType.REFRESH,
            fetch = FetchType.LAZY,
            mappedBy = "author")
    private List<Events> usersEvents;

    //посещенные пользователем мероприятия
    @OneToMany(cascade = CascadeType.REFRESH,
            fetch = FetchType.LAZY,
            mappedBy = "event_id")
    private List<Events_Users> attendedEvents;

    public String getAvatar() {
        return avatar;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFio() {
        return fio;
    }

    public void setFio(String fio) {
        this.fio = fio;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getHash_pass() {
        return hash_pass;
    }

    public void setHash_pass(String hash_pass) {
        this.hash_pass = hash_pass;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public List<Events> getUsersEvents() {
        return usersEvents;
    }

    public void setUsersEvents(List<Events> usersEvents) {
        this.usersEvents = usersEvents;
    }

    public List<Events_Users> getAttendedEvents() {
        return attendedEvents;
    }

    public void setAttendedEvents(List<Events_Users> attendedEvents) {
        this.attendedEvents = attendedEvents;
    }
}
