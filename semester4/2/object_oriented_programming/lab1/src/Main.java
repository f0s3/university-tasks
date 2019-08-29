import java.util.ArrayList;
import java.util.Arrays;

public class Main {
    public static void main(String[] args) {
        System.out.println("Hello World!");
        Writer w = new Writer();
        w.write();
        double[] a = {2.33333, 2.555555555555, 123.33333, 20.5555};
        w.printArray(a);
        w.promptUserAndCalculateFunction();
    }
}

