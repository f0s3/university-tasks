package com.company;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Person person2 = new Person("Andrii", "Kosenko", LocalDateTime.now());
        person2.printInfo();

        Scanner scanner = new Scanner(System.in);

        System.out.print("Введіть номер семестру - ");
        int semesterNum = scanner.nextInt();
        System.out.print("Введіть назву предмету - ");
        String subjectName = scanner.next();
        System.out.print("Введіть Прізвище та ініціали вчителя - ");
        String teacherName = scanner.next();
        System.out.print("Введіть оцінку - ");
        int mark = scanner.nextInt();
        System.out.print("Введіть дату здачі екзамену / іспиту - ");
        String whenEvaluatedStr = new Scanner(System.in).nextLine();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
        LocalDateTime whenEvaluated = LocalDateTime.parse(whenEvaluatedStr, formatter);

        Examination examination = new Examination(semesterNum, subjectName, teacherName, mark, whenEvaluated, false);

        System.out.println(examination.toString());

        Student student1 = new Student(person2, Education.Master, 1745);

        student1.addExams(new Examination[] {examination});

        student1.printInfo();
        System.out.println();
        student1.printAllZals();
        for (Examination e : student1.getExaminations()) {
            System.out.println(e.toString());
        }
    }
}
