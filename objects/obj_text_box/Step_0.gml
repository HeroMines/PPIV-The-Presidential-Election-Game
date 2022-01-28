/// @description Insert description here
// You can write your code in this editor

var _hover = (point_in_rectangle(mouse_x, mouse_y, x, y, x + width, y + height));

hover = lerp(hover, _hover, 0.1);

// lerp(0, (point_in_rectangle(mouse_x, mouse_y, x, y, x + width, y + height)), 0.1)