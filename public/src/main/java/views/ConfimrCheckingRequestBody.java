package views;

/**
 * Created by kuzin on 25.05.2016.
 */
public class ConfimrCheckingRequestBody {

    public Long event_id;
    public String random_token;

    public ConfimrCheckingRequestBody(){}

    public ConfimrCheckingRequestBody(Long event_id, String random_token) {
        this.event_id = event_id;
        this.random_token = random_token;
    }


    public String getRandom_token() {
        return random_token;
    }

    public void setRandom_token(String random_token) {
        this.random_token = random_token;
    }

    public Long getEvent_id() {
        return event_id;
    }

    public void setEvent_id(Long event_id) {
        this.event_id = event_id;
    }
}
