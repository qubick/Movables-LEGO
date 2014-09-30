use <mathhinge.scad>; //hinge(border, length, height)
use <LEGO.scad>;
use <convex.scad>;

/*
difference(){
	color("red") lego(2,1,2);
	translate([0,-4,0]) scale(.8, .8, .8) math_hinge(5,1,2.7);
	
}

difference(){
*/
	translate([0,-4,.1]) scale(.8, .8, .8) math_hinge(1,1,2.6);
	color("red") lego(2,2,2);
/*
translate([4, 4, 6.5]) convex();
translate([12, 4, 6.5]) convex();
*/

color("blue") 
	translate([0, -24, 0]) lego(2,2,2);