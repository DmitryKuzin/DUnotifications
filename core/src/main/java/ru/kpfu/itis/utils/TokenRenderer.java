package ru.kpfu.itis.utils;

import java.util.Date;
import java.util.Random;

/**
 * Created by kuzin on 15.05.2016.
 */
public class TokenRenderer {

    private final static String filling="" +
            "абвгдеёжзийклмнопрстуфхцчшщьыъэюя" +
            "АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЬЫЪЭЮЯ" +
            "abcdefghijklmnopqrstuvwxyz" +
            "ABCDEFJHIJKLMNOPQRSTUVWXYZ" +
            "0123456789!@#$%^&*()-=_+№;:?";

    public static String make(String role){
        char[] arr=filling.toCharArray();

        Random r=new Random();

        String s="";

        for (int i = 0; i < 18; i++) {
            s+=arr[r.nextInt(arr.length)];
        }
        String date=new Date().toString();
        return s+date.hashCode()+"_"+role;
    }
}
