$fa = 0.1;
$fs = 0.1;

pitch = 1.27;

shellHeight = 1.5;
shellLength = pitch * 6;
shellWidth = pitch * 3;

pogoHoleDia = 0.7;
mountingHoleDia = 0.9;

// Main shell with origin on centre of shell
// with holes for pogo pins (P13-4023)
// and holes for mounting pins
difference()
{
    translate([-(shellLength/2),-(shellWidth/2),0]) cube([shellLength,shellWidth,shellHeight]);
    
    translate([-1*pitch, pitch/2, 0]) cylinder(d=pogoHoleDia, h=shellHeight);
    translate([0 *pitch, pitch/2, 0]) cylinder(d=pogoHoleDia, h=shellHeight);
    translate([1 *pitch, pitch/2, 0]) cylinder(d=pogoHoleDia, h=shellHeight);

    translate([-1*pitch, -pitch/2, 0]) cylinder(d=pogoHoleDia, h=shellHeight);
    translate([0 *pitch, -pitch/2, 0]) cylinder(d=pogoHoleDia, h=shellHeight);
    translate([1 *pitch, -pitch/2, 0]) cylinder(d=pogoHoleDia, h=shellHeight);
    
    translate([-2*pitch, 0, 0]) cylinder(d=mountingHoleDia, h=shellHeight);
    translate([2 *pitch,  1.016, 0]) cylinder(d=mountingHoleDia, h=shellHeight);
    translate([2 *pitch, -1.016, 0]) cylinder(d=mountingHoleDia, h=shellHeight);
}
