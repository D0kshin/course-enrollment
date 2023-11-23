package ru.ac.uniyar.testingcourse;

import org.javalite.activejdbc.Base;

public class Main {
    public static void main(String[] args){
        Base.open("com.mysql.jdbc.Driver", "jdbc:mariadb://localhost:3306/", "root", "");
    }
}
