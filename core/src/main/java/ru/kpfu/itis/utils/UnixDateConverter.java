package ru.kpfu.itis.utils;

/**
 * Created by kuzin on 04.05.2016.
 */
public class UnixDateConverter {

    public static Long secsToMilis(Long secs){
        return new Long(secs*1000L);
    }

    public static Long milisToSecs(Long milis){
        return new Long(milis/1000L);
    }
}
