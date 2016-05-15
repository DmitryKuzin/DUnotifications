package ru.kpfu.itis.utils;

/**
 * Created by kuzin on 07.05.2016.
 */
public class Credentials {

    private String login;

    private String email;

    private String pass;

    public Credentials() {}

    public Credentials(String email, String login, String pass) {
        this.email = email;
        this.login = login;
        this.pass = pass;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
}
