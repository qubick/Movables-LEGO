use <mathhinge.scad> //hinge(border, length, height)
use <LEGO.scad>
use <convex.scad>
use <cover.scad>

rotate([90, 0, 0]) translate([0, 12.5, -12]) scale(.8, .8, .8) math_hinge(1.5,1,3.3);


	color("red") lego(2,2,2);
	translate([0,0,6]) cube([16,16,2]);

//top over hinge
difference(){
	color("blue") translate([0, 0, 17]) lego(2,2,2);
	translate([0,0,23.5]) cover();
}

translate([0,0,23])
difference(){
	scale([1,1,1.5]) cover();
	color("blue") translate([8,8,0]) cylinder($fn=50, r=3, h=4);
}

//translate([0,0,17]) cube([16,16, 1]);