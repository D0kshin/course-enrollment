package ru.ac.uniyar.testingcourse;

import org.javalite.activejdbc.Model;

public class WaitingList extends Model {
    private Integer studentId;

    public WaitingList(Integer studentId){
        this.studentId = studentId;
    }
}
