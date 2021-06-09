include <./r_square.scad>;

module wall(x,y,z,wall_width){
    difference(){
        cube([x,y,z]);
        translate([wall_width,wall_width,0]) cube([x - (wall_width * 2 ),y - (wall_width * 2 ), z ]);
    }
}

module r_wall(x,y,atsumi,r){
    difference(){
        r_square(x,y,r);
        translate([atsumi,atsumi]) r_square(x- (atsumi * 2 ),y- (atsumi * 2 ),r-atsumi);
    }
}

module r_wall_3d(x,y,z,atsumi,r){
    union(){
        linear_extrude(height = z, center = false) r_wall(x,y,atsumi,r);
    }
    
}
