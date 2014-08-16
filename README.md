Episode 6 : The Pause Effect
===
![](http://i.imgur.com/ZRk4hp7.png)
##Resources
- [GM Stacks](http://docs.yoyogames.com/source/dadiospice/002_reference/data%20structures/ds%20stacks/index.html)
- [Deactivating Instances](http://docs.yoyogames.com/source/dadiospice/002_reference/objects%20and%20instances/instances/deactivating%20instances/index.html)

##Art Credits
As always I am getting my art from OpenGameArt.org and again I have found some really talented people posting their work for people like me and you to use.
- ![](http://i.imgur.com/SWD79kR.png) : [Spritesheet of a man by Vander96](http://opengameart.org/content/spritesheet-of-a-man)
- ![](http://i.imgur.com/qGHRE3d.png) : [Monkey Lad by surt](http://opengameart.org/content/monkey-lad-in-magical-planet)

![](http://i.imgur.com/cPSLKjF.png) `o_pause`

![](http://i.imgur.com/zhS4Oah.png)
```c
///deactivate items
objects = ds_stack_create();

//single object
player = array(o_player.sprite_index,  o_player.image_index, o_player.x, o_player.y, o_player.image_xscale, o_player.image_yscale);
ds_stack_push(objects, player);
instance_deactivate_object(o_player);

//multiple objects
with(o_bird){
    ds_stack_push(o_pause.objects, array(sprite_index, image_index,x,y, image_xscale, image_yscale));
}
instance_deactivate_object(o_bird);
```
![](http://i.imgur.com/R3eInBt.png)
```c
temp = ds_stack_create();
ds_stack_copy(temp, objects);

while(!ds_stack_empty(objects)){
    obj = ds_stack_pop(objects);
    draw_sprite_ext(obj[0], obj[1], obj[2], obj[3], obj[4], obj[5], 0, c_white, 1);
}

objects = temp;
```
Transparent Layer
```
draw_set_alpha(0.75);
draw_set_color(c_black);
draw_rectangle(0,0,room_width, room_height,false);
draw_set_alpha(1);
draw_set_color(c_white);
draw_text((view_xview[0]+view_wview[0])/2,view_yview[0]+view_hview[0]/2,"GAME PAUSED");
```

![](http://i.imgur.com/ZuiP6J1.png)
```c
if(keyboard_check_pressed(vk_enter)) {
    instance_activate_all();
    instance_destroy();
}
```
