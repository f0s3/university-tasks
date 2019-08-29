package com.company;

import java.util.*;

public class Student extends Person implements Cloneable {
    Education education;
    String nameOfGroup;
    int numberOfZal;
    ArrayList<Examination> examinations;
    double averageOfExaminations;
    private Person person;

    public Student(Person person, Education education, int NumberOfZal) {
        this.person = person;
        this.education = education;
        numberOfZal = NumberOfZal;
        this.examinations = new ArrayList<>();
    }

    public void setEducation(Education education) {
        this.education = education;
    }

    public double getAverageOfExaminations() {
        int sum = 0;

        for (Examination e : examinations) {
            sum += e.getEvaluation();
        }

        return sum / examinations.size();
    }

    @Override
    public void printInfo() {
        System.out.print(
            education + "  " +
            nameOfGroup + "  " +
            numberOfZal + "  " +
            averageOfExaminations + "  " +
            this.person.getName()
        );

        for (Examination e : examinations) {
            System.out.print(e.toString());
        }
    }

    public void printAllZals() {
        Iterator<Examination> iterator = this.examinations.iterator();

        while (iterator.hasNext()) {
            if (!iterator.next().isExamination()) {
                try {
                    System.out.print(iterator.next().toString() + " ");
                } catch (NoSuchElementException e) {
                    System.out.println("No credits found");
                }
            }
        }
    }

    public void addExams(Examination[] examinations) {
        this.examinations.addAll(Arrays.asList(examinations));
    }

    @Override
    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            return new Student(this.person, this.education, this.numberOfZal);
        }
    }

    public ArrayList<Examination> getExaminations() {
        Collections.sort(this.examinations);
        return this.examinations;
    }
}
