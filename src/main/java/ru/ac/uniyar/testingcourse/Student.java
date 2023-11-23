package ru.ac.uniyar.testingcourse;

import org.javalite.activejdbc.Model;

public class Student extends Model {
    private Integer studentId;
    public Student(Integer studentId){
        this.studentId = studentId;
    }
}
