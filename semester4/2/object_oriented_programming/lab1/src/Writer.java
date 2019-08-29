import java.util.Scanner;

import static java.lang.Math.log;
import static java.lang.Math.sqrt;

public class Writer {
    public void write() {
        System.out.println("Hello World!1");
    }

    public void printArray(double[] array) {
        for (int i = 0;i < array.length;i++) {
            System.out.printf("%8s", i);
        }

        System.out.println();

        for (int i = 0;i < array.length;i++) {
            System.out.printf("%8s", String.format("%.2f", array[i]) + '$');
        }

        System.out.println();
    }

    public void promptUserAndCalculateFunction() {
        double[] input = promptUserForInput();
        printFunction(input);
    }

    private double[] promptUserForInput() {
        Scanner scanner = new Scanner(System.in);

        System.out.print("a = ");
        double a = scanner.nextDouble();

        System.out.print("b = ");
        double b = scanner.nextDouble();

        System.out.print("h = ");
        double h = scanner.nextDouble();

        return new double[] {a, b, h};
    }

    private void printFunction(double[] array) {
        double a = array[0];
        double b = array[1];
        double h = array[2];

        for (;a<=b;a+=h) {
            System.out.println(calculateFunction(a));
        }
    }

    public double calculateFunction(double x) {
        return sqrt(x) - log(1+x);
    }
}
