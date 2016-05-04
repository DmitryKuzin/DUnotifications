package views;

import ru.kpfu.itis.domain.Events;

import java.io.Serializable;
import java.util.List;

/**
 * Created by kuzin on 04.05.2016.
 */
public class DUEventsView implements Serializable {

    public List<Events> items;


    public DUEventsView(){}

    public DUEventsView(List<Events> events){
        this.items=events;
    }

    public List<Events> getItems() {
        return items;
    }

    public void setItems(List<Events> items) {
        this.items = items;
    }
}
