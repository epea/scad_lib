module wall(x,y,z,wall_width){
    difference(){
        cube([x,y,z]);
        translate([wall_width,wall_width,0]) cube([x - (wall_width * 2 ),y - (wall_width * 2 ), z ]);
    }
}