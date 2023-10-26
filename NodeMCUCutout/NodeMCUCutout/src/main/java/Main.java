import org.abstractica.javacsg.Geometry3D;
import org.abstractica.javacsg.JavaCSG;
import org.abstractica.javacsg.JavaCSGFactory;
import org.abstractica.javacsgmodules.nodemcu.NodeMCUv2Cutout;
import org.abstractica.javacsgmodules.nodemcu.RoundClickerHoleTest;
import org.abstractica.javacsgmodules.nodemcu.RoundSpool;

// Define the Main class
public class Main {
    public static void main(String[] args) {
        JavaCSG csg = JavaCSGFactory.createDefault();
        RoundSpool roundSpool = new RoundSpool();
        Geometry3D result;

        // Create an inner circle using RoundSpool and adjust its position
        Geometry3D innerCircle = roundSpool.getCutout(csg, 10, 8, 10, false);
        innerCircle = csg.rotate3DY(csg.degrees(90)).transform(innerCircle);
        innerCircle = csg.translate3D(-3.5, 0, 0).transform(innerCircle);

        // Create an inner bar and position it
        Geometry3D innerbar = csg.cylinder3D(2, 2, 15, false);
        innerbar = csg.translate3D(0.5, 0, 5).transform(innerbar);

        // Combine the inner circle and bar
        result = csg.union3D(innerCircle, innerbar);

        // Create an inner bar top and add it to the result
        Geometry3D innerBarTop = csg.cylinder3D(3.5, 0.5, 15, false);
        innerBarTop = csg.translate3D(0.5, 0, 6.5).transform(innerBarTop);
        result = csg.union3D(result, innerBarTop);

        // Create a right side circle, position it, and add it to the result
        Geometry3D rightSideCircle = roundSpool.getCutout(csg, 20, 1, 10, false);
        rightSideCircle = csg.rotate3DY(csg.degrees(90)).transform(rightSideCircle);
        rightSideCircle = csg.translate3D(3.5, 0, 0).transform(rightSideCircle);
        result = csg.union3D(result, rightSideCircle);

        // Create a left side circle, position it, and add it to the result
        Geometry3D leftSideCircle = roundSpool.getCutout(csg, 20, 1, 10, false);
        leftSideCircle = csg.rotate3DY(csg.degrees(90)).transform(leftSideCircle);
        leftSideCircle = csg.translate3D(-3.5, 0, 0).transform(leftSideCircle);
        result = csg.union3D(result, leftSideCircle);

        // Create an armhole
        Geometry3D armhole = csg.box3D(40, 8, 8, false);
        armhole = csg.translate3DX(0).transform(armhole);

        // Create a cylindrical motor hole and a rectangular shape
        Geometry3D cylindr = csg.cylinder3D(5, 30, 128, false);
        Geometry3D rect = csg.box3D(3, 5, 30, false);

        // Intersect the cylindrical motor hole and the rectangular shape
        Geometry3D motorHole = csg.intersection3D(cylindr, rect);

        // Position the motor hole and subtract it from the result
        motorHole = csg.rotate3DY(csg.degrees(90)).transform(motorHole);
        motorHole = csg.translate3D(-10, 0, 0).transform(motorHole);
        result = csg.difference3D(result, motorHole);

        // View the resulting 3D model
        csg.view(result);
    }
}
