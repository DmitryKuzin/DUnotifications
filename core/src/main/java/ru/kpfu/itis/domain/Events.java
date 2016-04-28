package ru.kpfu.itis.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Created by kuzin on 28.04.2016.
 */
@Entity
public class Events {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;

    private String startTime;

    private String endTime;

    private String place;

    private int currentParticipantsCount;

    private int maxParticipansCount;

    public int getCurrentParticipantsCount() {
        return currentParticipantsCount;
    }

    public void setCurrentParticipantsCount(int currentParticipantsCount) {
        this.currentParticipantsCount = currentParticipantsCount;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public int getMaxParticipansCount() {
        return maxParticipansCount;
    }

    public void setMaxParticipansCount(int maxParticipansCount) {
        this.maxParticipansCount = maxParticipansCount;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }
}
