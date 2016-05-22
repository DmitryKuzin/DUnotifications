package ru.kpfu.itis.wrappers;

import ru.kpfu.itis.domain.Events;
import ru.kpfu.itis.domain.Events_Users;
import ru.kpfu.itis.domain.Users;

import javax.persistence.CascadeType;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import java.io.Serializable;
import java.util.List;

/**
 * Created by kuzin on 07.05.2016.
 */
public class UsersWrapper implements Serializable{

    public UsersWrapper(){}

    public UsersWrapper(Users user) {
        this.address=user.getAddress();
        this.avatar=user.getAvatar();
        this.email=user.getEmail();
        this.fio=user.getFio();
        this.id=user.getId();
        this.hash_pass=user.getHash_pass();
        this.rating=user.getRating();
        this.role=user.getRole();
        this.username=user.getUsername();
        this.token=user.getToken();
    }

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

    public Users toUsers(){
        return new Users(address,avatar,email,fio,hash_pass,rating,role,token,username);
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
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

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
