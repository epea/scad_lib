/*
 * r:3隅のR
 * fnは全体の分割
 */
module r_square(x,y,r,fn=120){
    hull($fn=fn) {
      translate([r,r]) circle(r);
      translate([r,y-r]) circle(r);
      translate([x-r,r]) circle(r);
      translate([x-r,y-r]) circle(r);
    }
}

module r_square_3d(x,y,z,r,fn=120){
    linear_extrude(height = z, center = false) r_square(x,y,r,fn);
}