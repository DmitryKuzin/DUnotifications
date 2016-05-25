package views;

import ru.kpfu.itis.domain.Events;
import ru.kpfu.itis.wrappers.EventsWrapper;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by kuzin on 04.05.2016.
 */
public class DUEventsView implements Serializable {

    public List<EventsWrapper> items;


    public DUEventsView(){}

    public DUEventsView(List<Events> events){
        items=new ArrayList<EventsWrapper>();
        for(Events e:events){
            items.add(new EventsWrapper(e));
        }

    }

    public List<EventsWrapper> getItems() {
        return items;
    }

    public void setItems(List<EventsWrapper> items) {
        this.items = items;
    }
}
