use <mathhinge.scad> //hinge(border, length, height)
use <LEGO.scad>
use <convex.scad>
use <cover.scad>


translate([0,-4,.1]) scale(.8, .8, .8) math_hinge(1,1,2.6);

difference()
{
	color("red") lego(2,2,2);
	translate([0,0,6.5]) cover();
}

difference(){
	color("blue") 
		translate([0, -24, 0]) lego(2,2,2);
	 translate([0,-24,6.5]) cover();
}


//magnet holes - top of red
translate([0,0,6])
difference(){
	scale([1,1,1.5]) cover();
	color("blue") translate([8,8,0]) cylinder($fn=50, r=3, h=4);
}

//magnet holes - top of blue
translate([0,-24,6])
difference(){
	scale([1,1,1.5]) cover();
	color("blue") translate([8,8,0]) cylinder($fn=50, r=3, h=4);
}
