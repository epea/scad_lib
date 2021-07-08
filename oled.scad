module oled_ali_sh1106_1_3_oled_hole(){
    width = 35.5;
    length = 33.5;
    bolt_offset = 2.5;
    linear_extrude(height = z){
        square_offset_position_hole(width,length,bolt_offset,bolt_d);

        // PIN
        translate([width/2,length-2]) square([12,4],true) ;

        // 画面本体 
        translate([0,5]) square([36.5,24]);
        translate([10,2]) square([15.5,5]) ;
    }
}