package ru.ac.uniyar.testingcourse;

import org.javalite.activejdbc.Model;

public class EnrollList extends Model {
    private Integer studentId;

    public EnrollList(Integer studentId){
        this.studentId = studentId;
    }
}
