use <mathhinge.scad>
use <LEGO.scad>
use <convex.scad>
use <cover.scad>

module roller(){
 	difference(){
 		//color("red")
 			translate([5,1,0])
 			cylinder(r=3.5, h=0.5, $fn=50);
 
 		translate([5,1,-.5])
 			cylinder(r=0.9, h=3, $fn=50);
 	}
}

module axes(){
	cylinder($fn=50, r=1.2, h=.5);

	difference(){
		//innder dowel
		union(){
			cylinder($fn=50, r=0.6, h=2);
			translate([0, 0, 2.5]) sphere($fn=50, r=0.85);
		}
		translate([-1, - .2, 1]) cube([3, .3 ,6]);
	}
	
}


scale([3, 3, 3]) {
	translate([2.7, 2.7, 2]) axes();
	translate([5,2,0]) roller();
}

translate([0,0,6]) cover();
lego(2,2,2);

translate([22, 1, -5]){
	translate([4, 4, 6.5]) convex();
	translate([12, 4, 6.5]) convex();
	translate([4, 12, 6.5]) convex();
	translate([12, 12, 6.5]) convex();
}