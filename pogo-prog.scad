$fa = 0.01;
$fs = 0.01;

pitch = 1.27;
shellHeight = 10;

// Main shell with origin on centre of single locating pin
// with holes for pogo pins (P13-4023)
difference()
{
    translate([-0.5,-1.516,0]) cube([6.08,3.032,shellHeight]);
    
    translate([1*pitch, pitch/2, 0]) cylinder(d=0.7, h=shellHeight);
    translate([2*pitch, pitch/2, 0]) cylinder(d=0.7, h=shellHeight);
    translate([3*pitch, pitch/2, 0]) cylinder(d=0.7, h=shellHeight);

    translate([1*pitch, -pitch/2, 0]) cylinder(d=0.7, h=shellHeight);
    translate([2*pitch, -pitch/2, 0]) cylinder(d=0.7, h=shellHeight);
    translate([3*pitch, -pitch/2, 0]) cylinder(d=0.7, h=shellHeight);
}

// locating pins
translate([0   , 0      , -2]) cylinder(d=1, h=2);
translate([5.08, 1.016  , -2]) cylinder(d=1, h=2);
translate([5.08, -1.016 , -2]) cylinder(d=1, h=2);
