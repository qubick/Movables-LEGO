use <mathhinge.scad> //hinge(border, length, height)
use <LEGO.scad>
use <convex.scad>
use <cover.scad>

module bridge()
{
	translate([5.5, 5.5,-5]) cube([5,5,7]);
	translate([3,3,-5]) cube([10,10,1]);
}

module top_block(){
	translate([0, 0, 5]){
		difference(){
			lego(2,2,2);
			translate([0,0,6.5]) cover();
		}
		translate([0,0,6]) cover();

		cover();
		bridge();
	}
}

module ground_track(){
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
}

translate([-20, 0, -5]) 
difference(){
	color("red") top_block();
	translate([8,8,10]) cylinder($fn=50, r=3, h=4);
}
//ground track
ground_track();
