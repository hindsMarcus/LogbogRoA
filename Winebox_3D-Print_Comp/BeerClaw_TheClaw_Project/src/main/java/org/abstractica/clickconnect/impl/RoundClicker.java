package org.abstractica.clickconnect.impl;
import org.abstractica.javacsg.*;

import java.util.ArrayList;
import java.util.List;

// Define the RoundClicker class
public class RoundClicker
{
	public Geometry3D getHole(JavaCSG csg, double unit)
	{
		double delta = 0.1;
		// Create a list of 2D vertices to define the shape of the hole
		List<Vector2D> vertices = new ArrayList<>();
		vertices.add(csg.vector2D(0, 0));
		vertices.add(csg.vector2D(4 * unit + delta, 0));
		vertices.add(csg.vector2D(4 * unit + delta, 1 * unit));
		vertices.add(csg.vector2D(3 * unit + delta, 2 * unit));
		vertices.add(csg.vector2D(3 * unit + delta, 3 * unit));
		vertices.add(csg.vector2D(4 * unit + delta, 4 * unit));
		vertices.add(csg.vector2D(4 * unit + delta, 5 * unit));
		vertices.add(csg.vector2D(0, 5 * unit));
		// Create a 2D polygon using the vertices
		Geometry2D half = csg.polygon2D(vertices);
		// Rotate and extrude the 2D shape to create a 3D hole
		Geometry3D full3D = csg.rotateExtrude(csg.degrees(360), 128, half);
		return full3D; // Return the 3D hole geometry
	}

	public static void main(String[] args)
	{
		double unit = 1.0;
		JavaCSG csg = JavaCSGFactory.createDefault();
		// Create a 3D plate geometry
		Geometry3D plate = csg.box3D(10 * unit, 10 * unit, 5 * unit, false);
		// Create a hole using the RoundClicker class
		Geometry3D hole = new RoundClicker().getHole(csg, unit);
		// Subtract the hole from the plate to create a result geometry
		Geometry3D result = csg.difference3D(plate, hole);
		csg.view(result); // View the resulting 3D model
	}
}
