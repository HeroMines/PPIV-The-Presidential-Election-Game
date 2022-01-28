if (!global.loaded_game) {
	if (obj_game.dem_candidate.state == "Computer") {
		obj_game.hide_objects = true;	
		obj_game.alarm[0] = room_speed * 0.10;
	}
	obj_start_button.visible = false;	
} else {	
	load_game();
	if (obj_game.dem_candidate.state == "Computer") {
		obj_game.hide_objects = true;	
		obj_game.alarm[0] = room_speed * 0.10;
	}
	obj_start_button.visible = false;	
}