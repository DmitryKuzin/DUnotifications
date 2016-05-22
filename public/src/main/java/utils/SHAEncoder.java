package utils;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * Created by kuzin on 22.05.2016.
 */
public class SHAEncoder {

    public static String encode(String s){
        MessageDigest md = null;
        byte[] digest=new byte[0];
        try {
            md = MessageDigest.getInstance("SHA-256");
            md.update(s.getBytes("UTF-8"));
            digest = md.digest();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return digest.length>1? String.format("%064x", new java.math.BigInteger(1, digest)): null;
    }

    public static void main(String[] args) {
        System.out.println(encode("myevents9209kbprf"));
    }
}