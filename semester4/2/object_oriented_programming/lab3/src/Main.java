import shapes.Circle;
import shapes.Shape;
import shapes.Square;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("(C)ircle or (S)quare? : ");
        String answer = scanner.next();

        answer = answer.toLowerCase();

        boolean isCircle = answer.equals("c") || answer.equals("circle");
        boolean isSquare = answer.equals("s") || answer.equals("square");

        Shape shape = null;

        if (isCircle) {
            System.out.print("Enter radius: ");
            double r = scanner.nextDouble();
            shape = new Circle(r);
        } else if (isSquare) {
            System.out.print("Enter square side: ");
            double a = scanner.nextDouble();
            shape = new Square(a);
        }

        System.out.println(shape.getArea());
    }
}
