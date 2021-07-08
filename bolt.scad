module bolt_hole(height,outer_r,inner_r,fn=30){
    difference(){
        cylinder (h = height, d = outer_r,$fn=fn);
        cylinder (h = height, d = inner_r,$fn=fn);
    }
}

module bolt_hole_2d(d){
    circle(d=d,$fn=50);
}
