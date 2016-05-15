package ru.kpfu.itis.utils;

/**
 * Created by kuzin on 07.05.2016.
 */
public class Credentials {

    private String email;

    private String hash_pass;

    public Credentials() {}

    public Credentials(String email, String hash_pass) {
        this.email = email;
        this.hash_pass = hash_pass;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getHash_pass() {
        return hash_pass;
    }

    public void setHash_pass(String hash_pass) {
        this.hash_pass = hash_pass;
    }
}
