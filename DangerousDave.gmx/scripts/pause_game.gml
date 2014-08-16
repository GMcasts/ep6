//pause player
if(!game_paused) { instance_deactivate_object(o_player); game_paused = true; }else{ instance_activate_all(); game_paused = false; }

