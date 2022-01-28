/// @description Insert description here
// You can write your code in this editor

if (draw_getpixel(mouse_x, mouse_y) == make_color_rgb(0, 166, 81)) {
alarm[0] = room_speed * 0.10;
} else if (draw_getpixel(mouse_x, mouse_y) == make_color_rgb(238, 28, 36)) {
instance_destroy();	
}