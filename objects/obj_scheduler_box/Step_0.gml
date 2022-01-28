/// @description Insert description here
// You can write your code in this editor

if (obj_game.hide_objects) exit;

if (mouse_check_button_pressed(mb_left)) {
    if (position_meeting(mouse_x, mouse_y, id)) {
    selected = !selected;
	} else if (position_meeting(mouse_x, mouse_y, par_states)) {
		if (selected) {
		global.scheduler_box_counter = 0;
		selected_state = instance_position(mouse_x, mouse_y, par_states);
		selected = !selected;
		with (obj_scheduler_box) {
			if (selected_state != noone) {
				global.scheduler_box_counter += 1;
				}
			if (global.scheduler_box_counter == 7) {
				if (!instance_exists(obj_text_box)) {
					alarm[0] = room_speed * 0.10;
					}
				}
			}
		}
	}
}