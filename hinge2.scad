use <mathhinge.scad>; //hinge(border, length, height)
use <LEGO.scad>;
use <convex.scad>;


translate([0,-4,.1]) scale(.8, .8, .8) math_hinge(1,1,2.6);
color("red") lego(2,2,2);


color("blue") rotate([90,0,0]) translate([0, -4.5, 7.5]) lego(2,2,1);