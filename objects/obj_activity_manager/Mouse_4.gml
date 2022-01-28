/// @description Insert description here
// You can write your code in this editor

if ((draw_getpixel(mouse_x, mouse_y) == make_color_rgb(0, 84, 166))) {
	try {
		
	    rest_counter = 0;
	    expenditure = 0;
	    for (i = 0; i < array_length(obj_game.turn_order[obj_game.player_turns].campaign_activity); i++) {
	        switch (obj_game.turn_order[obj_game.player_turns].campaign_activity[i]) {
	            case "Campaign":
	            obj_activity_manager.expenditure += 0.50;
	            break;
	            case "Press Conference":
	            obj_activity_manager.expenditure += 1;
	            break;
	            case "Rest":
				obj_activity_manager.rest_counter += 1.25;
	            break;
	            case "Fund Raising":
	            obj_activity_manager.expenditure += 0.25;
	            break;
				case "":
				alarm[2] = room_speed * 0.10;
				exit;
				break;
			}
		}	
		
		var count = 0;
	    for (i = 0; i < array_length(obj_game.turn_order[obj_game.player_turns].campaign_activity); i++) {
	        if (obj_game.turn_order[obj_game.player_turns].campaign_activity[i] == "Press Conference") {
	            count += 1;
	        }
                        
	        if (count >= 2) {
			alarm[0] = room_speed * 0.10;
			exit;
	        }
	    }
		
		var count = 0;
	    for (i = 0; i < array_length(obj_game.turn_order[obj_game.player_turns].campaign_activity); i++) {
	        if (obj_game.turn_order[obj_game.player_turns].campaign_activity[i] == "Fund Raising") {
	            count += 1;
	        }
                        
	        if (count >= 2) {
			alarm[0] = room_speed * 0.10;
			exit;
	        }
	    }
		
		if ((obj_game.stamina[obj_game.player_turns] + rest_counter) - expenditure >= 0) {
			for (i = 0; i < array_length(obj_game.turn_order[obj_game.player_turns].campaign_activity); i++) {
		        switch (obj_game.turn_order[obj_game.player_turns].campaign_activity[i]) {
		            case "Campaign":
		            obj_game.turn_order[obj_game.player_turns].states[obj_game.rounds].cand_score[obj_game.player_turns] += 0.75 + (obj_game.turn_order[obj_game.player_turns].stats1[5] * 0.04);
					obj_game.stamina[obj_game.player_turns] -= 0.50;
		            break;
		            case "Press Conference":
					with (par_states) {
						cand_score[obj_game.player_turns] += 0.50 + (obj_game.turn_order[obj_game.player_turns].stats1[5] * 0.04)
					}
					obj_game.stamina[obj_game.player_turns] -= 1;
		            break;
		            case "Rest":
		            if (obj_game.stamina[obj_game.player_turns] < 10) {
		                obj_game.stamina[obj_game.player_turns] += 1.25;
		            }
		            break;
		            case "Fund Raising":
					obj_game.turn_order[obj_game.player_turns].income += (obj_game.turn_order[obj_game.player_turns].states[obj_game.rounds].income * obj_game.turn_order[obj_game.player_turns].stats1[3])*irandom(3);
					obj_game.stamina[obj_game.player_turns] -= 0.25;
		            break;
				}	
			}
			obj_game.turn_order[obj_game.player_turns].scheduling_complete = true;
			obj_game.alarm[0] = room_speed * 0.10;
			instance_destroy();
		} else if ((obj_game.stamina[obj_game.player_turns] + rest_counter) - expenditure < 0) {
			alarm[1] = room_speed * 0.10;
		}
	} catch (_exception) {
		alarm[2] = room_speed * 0.10;
	    show_debug_message(_exception.message);
	    show_debug_message(_exception.longMessage);
	    show_debug_message(_exception.script);
	    show_debug_message(_exception.stacktrace);
	}
} else if ((draw_getpixel(mouse_x, mouse_y) == make_color_rgb(238, 28, 36))) {
	instance_destroy();
}