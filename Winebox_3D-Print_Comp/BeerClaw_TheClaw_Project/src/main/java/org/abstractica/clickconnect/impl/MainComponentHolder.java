package org.abstractica.clickconnect.impl;
import org.abstractica.javacsg.*;

// Define the MainComponentHolder class
public class MainComponentHolder {

    private final JavaCSG csg;

    // Constructor for the MainComponentHolder class
    public MainComponentHolder(JavaCSG csg) {
        this.csg = csg;
    }

    // Method to get the main component geometry
    Geometry3D getMainComp() {
        // Create a 3D box representing the main component
        Geometry3D box = csg.box3D(45, 40, 60, false);
        box = csg.translate3DZ(-40).transform(box);

        // Create a StepMotor3DModel instance and obtain the step motor holder geometry
        StepMotor3DModel stepMotor3DModel = new StepMotor3DModel(csg);
        Geometry3D stepMotor = stepMotor3DModel.getStepMotorHolder();

        // Create a wire hole geometry
        Geometry3D wireHole = csg.box3D(14.5, 7, 6, false);
        wireHole = csg.translate3DZ(11.5).transform(wireHole);
        wireHole = csg.translate3DY(20).transform(wireHole);

        // Create a half circle geometry
        Geometry3D halfcircle = csg.coneSegment3D(2, 90, 40, csg.degrees(180), csg.degrees(0), 6, false);
        halfcircle = csg.translate3DZ(-80).transform(halfcircle);
        halfcircle = csg.translate3DY(20).transform(halfcircle);

        // Subtract step motor, wire hole, and face geometry from the main component
        box = csg.difference3D(box, stepMotor, wireHole, getFace());
        box = csg.union3D(box, getWineBoxPlateHolder(), halfcircle);

        return box; // Return the final main component geometry
    }

    // Method to get the wine box plate holder geometry
    Geometry3D getWineBoxPlateHolder() {
        // Create a 3D box representing the wine box plate holder
        Geometry3D wineHolder = csg.box3D(90, 34, 195, false);
        wineHolder = csg.translate3DZ(-183.5).transform(wineHolder);
        wineHolder = csg.translate3DY(37).transform(wineHolder);

        // Create a hole in the wine box plate holder
        Geometry3D wineHole = csg.box3D(82, 30, 186, false);
        wineHole = csg.translate3DZ(-179).transform(wineHole);
        wineHole = csg.translate3DY(39.5).transform(wineHole);

        // Subtract the hole from the wine box plate holder
        wineHolder = csg.difference3D(wineHolder, wineHole);

        return wineHolder; // Return the wine box plate holder geometry
    }

    // Method to get the face geometry
    public Geometry3D getFace() {
        Geometry2D text = csg.text2D(".͜.", 16, 30, 64);
        Geometry3D text3d = csg.linearExtrude(3, true, text);

        text3d = csg.rotate3DX(csg.degrees(90)).transform(text3d);
        text3d = csg.rotate3DY(csg.degrees(180)).transform(text3d);

        text3d = csg.translate3DZ(0).transform(text3d);
        text3d = csg.translate3DX(24).transform(text3d);
        text3d = csg.translate3DY(-20).transform(text3d);

        return text3d; // Return the face geometry
    }

    // Method to get the main component with all parts collected
    Geometry3D getMainComponentCollected() {
        Geometry3D MainComponentCollected = getMainComp();
        Geometry3D WineBoxPlateHolder = getWineBoxPlateHolder();

        // Union the main component and wine box plate holder
        MainComponentCollected = csg.union3D(MainComponentCollected, WineBoxPlateHolder);

        // Rotate the resulting geometry
        MainComponentCollected = csg.rotate3DY(csg.degrees(90)).transform(MainComponentCollected);
        MainComponentCollected = csg.rotate3DX(csg.degrees(270)).transform(MainComponentCollected);

        return MainComponentCollected; // Return the final main component geometry
    }

    // Main method to demonstrate the MainComponentHolder class
    public static void main(String[] args) {
        JavaCSG csg = JavaCSGFactory.createDefault();
        MainComponentHolder mainComponentHolder = new MainComponentHolder(csg);
        Geometry3D res = mainComponentHolder.getMainComponentCollected();
        csg.view(res); // View the resulting 3D model
    }
}
