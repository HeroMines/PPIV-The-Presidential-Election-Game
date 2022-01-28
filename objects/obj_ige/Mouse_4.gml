/// @description Insert description here
// You can write your code in this editor

if (draw_getpixel(mouse_x, mouse_y) == make_color_rgb(0, 166, 81)) {
var _saveData = [];	
	with (obj_game) {
		var _saveEntity = {
			obj : object_get_name(object_index),
			par : "none",
			candidate_list : candidate_list
	
		}
		array_push(_saveData, _saveEntity);
	}
		
var _string = json_stringify(_saveData);
var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
buffer_write(_buffer, buffer_string, _string);
buffer_save(_buffer, "candidate_list.json");
buffer_delete(_buffer);

instance_destroy();
} else if (draw_getpixel(mouse_x, mouse_y) == make_color_rgb(238, 28, 36)) {
instance_destroy();
}