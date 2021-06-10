// 四角の四隅の穴位置計算
function get_square_offset_position(x,y,offset) = [[offset,offset],[x-offset,offset],[offset,y-offset],[x-offset,y-offset]];

// 四角四隅のボルト穴 (及び ボルトの台にも)

module square_offset_position_hole(x,y,offset,d,fn=30){
    union(){
        for( position = get_square_offset_position(x,y,offset) ){
            translate( position ) circle(d=d,$fn=fn);
        }
    }
}

module square_offset_position_circle(x,y,offset,d,fn=30){
    union(){
        for( position = get_square_offset_position(x,y,offset) ){
            translate( position ) circle(d=d,$fn=fn);
        }
    }
}

module square_offset_position_cylinder(x,y,z,offset,d,fn=30){
    linear_extrude(height = z, center = false) square_offset_position_circle(x,y,offset,d,fn);
}