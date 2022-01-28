/// @description Insert description here
// You can write your code in this editor

purpose = 0; //Candidates
can_num = 0;

image_speed = 0;
text = obj_game.dem_list[0].name;

lower_pos = 0;
upper_pos = 1;

centerX = x - sprite_get_xoffset(sprite_index) + sprite_width / 2;
centerY = y - sprite_get_yoffset(sprite_index) + sprite_height / 2;

image = obj_game.dem_list[0].pic;

list = obj_game.dem_list;

show_list = false;