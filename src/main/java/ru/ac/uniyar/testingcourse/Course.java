package ru.ac.uniyar.testingcourse;

import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import org.javalite.activejdbc.Model;

/**
 * Класс предназначен для учёта студентов, записанных на учебный курс.
 * Для курса задаётся максимально допустимое количество студентов.
 * Студенты определяются своими идентификаторами (целые числа).
 * При попытке записать на курс большее количество студентов, чем возможно,
 * происходит добавление студентов в список ожидания. Если отменяется запись
 * студента из списка записавшихся, а список ожидания не пуст, то первый студент
 * из него перемещается в список записавшихся. Каждый студент может быть
 * записан не более одного раза.
 */
public class Course extends Model {
    private int maxStudents;
    EnrollList enrollList;
    WaitingList waitingList;

    public Course(int maxStudents) {
        this.maxStudents = maxStudents;
    }

}
