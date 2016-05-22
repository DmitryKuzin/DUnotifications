package views;

/**
 * Created by kuzin on 23.05.2016.
 */
public class WillGoRequestBody {

    private String token;
    private long event_id;

    public WillGoRequestBody() {}

    public WillGoRequestBody(long event_id, String token) {
        this.event_id = event_id;
        this.token = token;
    }

    public long getEvent_id() {
        return event_id;
    }

    public void setEvent_id(long event_id) {
        this.event_id = event_id;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }
}
