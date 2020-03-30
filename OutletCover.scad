

$fn=100;

module jack()
{
    translate([0, 0, (17-3)/2])
            cube([1.5, 6.5, 17 -3 ], center=true);

    translate([0, 0, 17-3])
        scale([1.5/2, 6.5/2, 3])
            rotate(45, [0,0,1])
                cylinder(h=1, r1=sqrt(2), r2=1, $fn=4);
}

module BasePlate()
{
    offset(5) offset(-5)
        square([40,80], center=true);
}


translate([-12.7/2, -34/2, 0]){
    translate([0,0,0]) jack();
    translate([12.7,0,0]) jack();
    translate([0,34,0]) jack();
    translate([12.7,34,0]) jack();
}
//translate([0,0,-0.5]) scale([1.02,1.02,1]) linear_extrude(height=0.5, scale=1) BasePlate(); 
translate([0,0,-1]) linear_extrude(height=1, scale=1.03) BasePlate();


