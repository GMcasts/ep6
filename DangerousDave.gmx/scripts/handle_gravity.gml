if(!GROUNDED) {
    ratio += 0.02;
    y += 2*ratio;
    
    //calculate_gravity(current_time-start_gravity_time);
    if(!JUMPING){
        sprite_index = s_playerJump;
        image_index = 2;
        image_speed = 0;
    }else{
    }
}
if(JUMPING) {
    y -= 4;
}
