package views;

/**
 * Created by kuzin on 25.05.2016.
 */
public class RandomTokenResponseBody {

    private String random_token;

    public RandomTokenResponseBody() {
    }

    public RandomTokenResponseBody(String random_token) {
        this.random_token = random_token;
    }

    public String getRandom_token() {
        return random_token;
    }

    public void setRandom_token(String random_token) {
        this.random_token = random_token;
    }
}
