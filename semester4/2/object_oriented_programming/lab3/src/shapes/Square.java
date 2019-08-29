package shapes;


public class Square implements Shape {
    private double a;

    public Square() {}

    public Square(double a) {
        this.a = a;
    }

    @Override
    public double getArea() {
        return a*a;
    }
}
