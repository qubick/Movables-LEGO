use <mathhinge.scad> //hinge(border, length, height)
use <LEGO.scad>
use <convex.scad>
use <cover.scad>

module bridge()
{
	translate([5.5, 5.5,-5]) cube([5,5,7]);
	translate([3,3,-5]) cube([10,10,1]);
}

color("red") translate([0, 0, 5]){
	lego(2,2,2);
	cover();
	bridge();
}

//ground track
difference(){
	translate([0,0,-5])	lego(8,2,1);
	translate([0,0,-2])cube([70,16,5]);
}
translate([0,0,-2.5]) scale([4,1,1]) cover();

//left wall
translate([0,0,-1]) cube([64,1, 4]);
//right wall
translate([0,15,-1]) cube([64,1, 4]);
//left top cover
translate([0,0,2]) cube([64,4,1]);
//right top cover
translate([0,11,2]) cube([64,4,1]);