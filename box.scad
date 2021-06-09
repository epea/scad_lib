include <./r_square.scad>;
include <./wall.scad>;

module r_box_bottom(x,y,z,atsumi,r){
    union(){
        r_square_3d(x,y,atsumi,r);
        translate([0,0,atsumi]) r_wall_3d(x,y,z-atsumi,atsumi,r);
    }
}

module r_box_top(x,y,z,atsumi,r){
    union(){
        r_wall_3d(x,y,z-atsumi,atsumi,r);
        translate([0,0,z-atsumi]) r_square_3d(x,y,atsumi,r);
        
    }
}

