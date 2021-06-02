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