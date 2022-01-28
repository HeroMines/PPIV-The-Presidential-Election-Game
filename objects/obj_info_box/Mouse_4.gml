/// @description Insert description here
// You can write your code in this editor

if (purpose == 2) {
	if (obj_game.hide_objects) {
		if (obj_game.turn_order[obj_game.player_turns].state == "Human") {
			if (!instance_exists(obj_activity_manager)) {
				instance_create_depth(room_width/2, room_height/2, -1, obj_activity_manager);
			} else {
				instance_destroy(obj_activity_manager);	
			}
		}
	}
}