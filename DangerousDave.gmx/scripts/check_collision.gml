//check the right point
o_id = instance_position(x+5,y-10,o_block);
if(o_id!=noone) {
    x = o_id.bbox_left-5;
}
//check the left point
o_id = instance_position(x-8,y-10,o_block);
if(o_id!=noone) {
    x = o_id.bbox_right+8;
}
FOUND_FLOOR = false;
// check the bottom point
/*
l_id = instance_position(x+5,y,o_block);
r_id = instance_position(x-8,y,o_block);
if(l_id!=noone || r_id != noone){
    if(r_id!=noone){ y = r_id.y; }else if(l_id!=noone){y = l_id.y;}
    GROUNDED = true;
    FOUND_FLOOR = true;
}
*/

for(xd=bbox_left; xd<=bbox_right; xd++)
{
    for(yd=bbox_top; yd<=bbox_bottom;yd++)
    {
        o_id=instance_position(xd,yd,o_block);
        if(o_id != noone)
        {
            if(yd>=20 && xd <= bbox_left+5){
                y = o_id.y;
                GROUNDED = true;
                FOUND_FLOOR = true;
            }
        }
    }
}

if(!FLOOR_FOUND){
    GROUNDED = false;
}
if(instance_position(o_player.x, o_player.y, o_block)){
    GROUNDED = true;
}

