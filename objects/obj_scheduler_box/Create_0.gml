/// @description Scheduler Box
// You can write your code in this editor

text = "";
name = "";
centerX = x - sprite_get_xoffset(sprite_index) + sprite_width / 2;
centerY = y - sprite_get_yoffset(sprite_index) + sprite_height / 2;
selected = false;
selected_state = noone;
global.scheduler_box_counter = 0;
assigned_state_number = 0;