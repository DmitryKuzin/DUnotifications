package ru.kpfu.itis.domain;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by kuzin on 28.04.2016.
 */
@Entity
public class Events {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;

    private Integer homeNum;

    private String description;

    @ManyToOne(cascade = {CascadeType.REFRESH},
            fetch = FetchType.LAZY)
    private Users author;

    private Double coordinates_x;

    private Double coordinates_y;

    private Integer currentParticipantsCount;

    private Integer maxParticipansCount;
    //time in seconds from 1970
    private Long dt;

    public Events(){}

    public Events(Double coordinates_x, Double coordinates_y, Integer currentParticipantsCount, String description, Long dt, Integer homeNum, Integer maxParticipansCount, String name,Users author) {
        this.coordinates_x = coordinates_x;
        this.coordinates_y = coordinates_y;
        this.currentParticipantsCount = currentParticipantsCount;
        this.description = description;
        this.dt = dt;
        this.homeNum = homeNum;
        this.maxParticipansCount = maxParticipansCount;
        this.name = name;
        this.author=author;
    }

    public Integer getHomeNum() {
        return homeNum;
    }

    public void setHomeNum(Integer homeNum) {
        this.homeNum = homeNum;
    }

//    public int getCurrentParticipantsCount() {
//        return currentParticipantsCount;
//    }
//
//    public void setCurrentParticipantsCount(int currentParticipantsCount) {
//        this.currentParticipantsCount = currentParticipantsCount;
//    }
//
//    public Double getCoordinates_x() {
//        return coordinates_x;
//    }
//
//    public void setCoordinates_x(Double coordinates_x) {
//        this.coordinates_x = coordinates_x;
//    }
//
//    public Double getCoordinates_y() {
//        return coordinates_y;
//    }
//
//    public void setCoordinates_y(Double coordinates_y) {
//        this.coordinates_y = coordinates_y;
//    }
//
//    public void setCurrentParticipantsCount(Integer currentParticipantsCount) {
//        this.currentParticipantsCount = currentParticipantsCount;
//    }

    public void setMaxParticipansCount(Integer maxParticipansCount) {
        this.maxParticipansCount = maxParticipansCount;
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

    public Users getAuthor() {
        return author;
    }

    public void setAuthor(Users author) {
        this.author = author;
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
}
