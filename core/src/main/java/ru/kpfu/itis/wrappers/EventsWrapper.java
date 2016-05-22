package ru.kpfu.itis.wrappers;

import ru.kpfu.itis.domain.Events;
import ru.kpfu.itis.domain.Users;

/**
 * Created by kuzin on 07.05.2016.
 */
public class EventsWrapper {

    private Double coordinates_x;

    private Double coordinates_y;

    private String description;

    private Long id;

    private Integer maxParticipansCount;

    private String name;

    private Long dt;

    private Integer currentParticipantsCount;

    private Users author;
    
    public Events toEvents(){
        return new Events(coordinates_x,coordinates_y,currentParticipantsCount,description,dt,3
        ,maxParticipansCount,name,author);
    }

    public Double getCoordinates_x() {
        return coordinates_x;
    }

    public void setCoordinates_x(Double coordinates_x) {
        this.coordinates_x = coordinates_x;
    }

    public Double getCoordinates_y() {
        return coordinates_y;
    }

    public void setCoordinates_y(Double coordinates_y) {
        this.coordinates_y = coordinates_y;
    }

    public Integer getCurrentParticipantsCount() {
        return currentParticipantsCount;
    }

    public void setCurrentParticipantsCount(Integer currentParticipantsCount) {
        this.currentParticipantsCount = currentParticipantsCount;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Long getDt() {
        return dt;
    }

    public void setDt(Long dt) {
        this.dt = dt;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getMaxParticipansCount() {
        return maxParticipansCount;
    }

    public void setMaxParticipansCount(Integer maxParticipansCount) {
        this.maxParticipansCount = maxParticipansCount;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Users getAuthor() {
        return author;
    }

    public void setAuthor(Users author) {
        this.author = author;
    }
}
