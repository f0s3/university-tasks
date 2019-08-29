package com.company;

import java.time.LocalDateTime;

public class Person {
    String name;
    String surname;
    LocalDateTime birthDate;

    public Person() {
        name = "Unknown";
        surname = "Unknown";
    }

    public Person(String name, String surname, LocalDateTime birthDate) {
        this.name = name;
        this.surname = surname;
        this.birthDate = birthDate;
    }

    public void printInfo() {
        System.out.println(this.name);
        System.out.println(this.surname);
    }

    public void setBirthDate(LocalDateTime birthDate) {
        this.birthDate = birthDate;
    }

    public LocalDateTime getBirthDate() {
        return this.birthDate;
    }

    protected String getName() {
        return this.name;
    }
}
