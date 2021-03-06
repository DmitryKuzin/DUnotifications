package ru.kpfu.itis.wrappers;

import ru.kpfu.itis.domain.Events;
import ru.kpfu.itis.domain.Users;

import java.io.Serializable;

/**
 * Created by kuzin on 07.05.2016.
 */
public class EventsWrapper implements Serializable {

    private String place;

    private String description;

    private Long id;

    private Integer maxParticipansCount;

    private String name;

    private Long dt;

    private Integer currentParticipantsCount;

    private String homeNum;

    private Long author;

    public EventsWrapper(){}

    public EventsWrapper(Events e) {
        this.place=e.getPlace();
        this.currentParticipantsCount = e.getCurrentParticipantsCount();
        this.description = e.getDescription();
        this.dt = e.getDt();
        this.id = e.getId();
        this.maxParticipansCount = e.getMaxParticipansCount();
        this.name = e.getName();
        this.homeNum=e.getHomeNum();
    }

    public Events toEvents(){
        return new Events(this.place,this.currentParticipantsCount,this.description,this.dt,this.homeNum
        ,this.maxParticipansCount,this.name);
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
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

    public Long getAuthor() {
        return author;
    }

    public void setAuthor(Long author) {
        this.author = author;
    }

    public String getHomeNum() {
        return homeNum;
    }

    public void setHomeNum(String homeNum) {
        this.homeNum = homeNum;
    }
}
