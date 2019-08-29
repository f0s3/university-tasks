package com.company;

import java.time.LocalDateTime;

public class Examination implements Comparable<Examination> {
    private int numberOfSem;
    private String nameOfSubject;
    private String nameOfTeacher;
    private int evaluation;
    private boolean isExam;
    LocalDateTime whenEvaluated = LocalDateTime.now();

    public Examination() {
        this.numberOfSem = 1;
        this.nameOfSubject = "Unknown";
        this.nameOfTeacher = "Unknown";
        this.evaluation = 0;
    }

    public Examination(
            int numberOfSem,
            String nameOfSubject,
            String nameOfTeacher,
            int evaluation,
            LocalDateTime whenEvaluated,
            boolean isExam
    ) {
        this.numberOfSem = numberOfSem;
        this.nameOfSubject = nameOfSubject;
        this.nameOfTeacher = nameOfTeacher;
        this.evaluation = evaluation;
        this.whenEvaluated = whenEvaluated;
        this.isExam = isExam;
    }

    public int getEvaluation() {
        return this.evaluation;
    }

    @Override
    public String toString(){
        return this.nameOfSubject + "  " + this.nameOfTeacher + "   " + this.evaluation;
    }

    public boolean isExamination() {
        return this.isExam;
    }

    public String getSubjectName() {
        return this.nameOfSubject;
    }

    @Override
    public int compareTo(Examination o) {
        return this.getSubjectName().compareTo(o.getSubjectName());
    }
}
