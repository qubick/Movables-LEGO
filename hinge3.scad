use <mathhinge.scad>; //hinge(border, length, height)
use <LEGO.scad>;
use <convex.scad>;


rotate([90, 0, 0]) translate([0, 12.5, -12]) scale(.8, .8, .8) math_hinge(1.5,1,3.3);


	color("red") lego(2,2,2);
	translate([0,0,6]) cube([16,16,2]);

color("blue") translate([0, 0, 17]) lego(2,2,2);

translate([0,0,17]) cube([16,16, 1]);