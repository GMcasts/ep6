if(!JUMPING && GROUNDED){
    sprite_index = s_playerJump;
    image_index = 0;
    image_speed = 0;
    GROUNDED = false;
    JUMPING = true;
    alarm[0] = room_speed;
    ratio = 1.0;
}
