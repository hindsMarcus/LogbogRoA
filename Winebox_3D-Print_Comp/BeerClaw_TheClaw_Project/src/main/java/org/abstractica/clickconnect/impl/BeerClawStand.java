package org.abstractica.clickconnect.impl;
import org.abstractica.javacsg.*;

// Define the BeerClawStand class
public class BeerClawStand {
    private final JavaCSG csg;
    private final double unit;

    // Constructor for the BeerClawStand class
    public BeerClawStand(JavaCSG csg, double unit) {
        this.csg = csg;
        this.unit = unit;
    }

    // Method to get the stand face geometry
    public Geometry3D getStandFace() {
        // Create a 2D text geometry with specific characters and dimensions
        Geometry2D text = csg.text2D(".͜.", 16, 30, 64);
        text = csg.rotate2D(csg.degrees(90)).transform(text); // Rotate the text
        // Extrude the 2D text into a 3D object
        Geometry3D text3d = csg.linearExtrude(3, true, text);
        text3d = csg.translate3DZ(44).transform(text3d);
        text3d = csg.translate3DX(-12.5).transform(text3d);
        text3d = csg.translate3DY(-24).transform(text3d);
        return text3d; // Return the resulting 3D text geometry
    }

    // Method to get the beer claw stand geometry
    public Geometry3D getBeerClawStand() {
        // Create a 3D box representing the main stand
        Geometry3D stand = csg.box3D(70, 80, 45, false);
        // Create a cone to serve as a hole in the stand
        Geometry3D standHole = csg.cone3D(56, 75, 86, 64, false);
        // Create a flat ring geometry
        Geometry3D standTongue = csg.flatRing3D(0, 80, 10, 64, false);
        standTongue = csg.translate3DX(35).transform(standTongue);
        standHole = csg.translate3DZ(2).transform(standHole);
        standHole = csg.translate3DX(30).transform(standHole);
        stand = csg.union3D(stand, standTongue); // Union of the main stand and the tongue

        // Subtract the hole, stand face, and click hole from the main stand
        stand = csg.difference3D(stand, standHole, getStandFace(), getClickHole());
        return stand; // Return the final 3D beer claw stand geometry
    }

    // Method to get the click hole geometry
    public Geometry3D getClickHole() {
        // Create an instance of the RoundClicker class
        RoundClicker roundClicker = new RoundClicker();
        // Obtain the clicker hole geometry
        Geometry3D clickerHole = roundClicker.getHole(csg, 1.0);
        clickerHole = csg.translate3DZ(40).transform(clickerHole);
        clickerHole = csg.translate3DX(-25).transform(clickerHole);
        clickerHole = csg.translate3DY(-30).transform(clickerHole);
        return clickerHole; // Return the clicker hole geometry
    }

    // Main method to demonstrate the BeerClawStand class
    public static void main(String[] args) {
        // Create a default JavaCSG instance
        JavaCSG csg = JavaCSGFactory.createDefault();
        // Create an instance of BeerClawStand
        BeerClawStand beerClawStand = new BeerClawStand(csg, 15);
        // Generate the beer claw stand geometry
        Geometry3D res = beerClawStand.getBeerClawStand();
        // View the resulting 3D model
        csg.view(res);
    }
}
