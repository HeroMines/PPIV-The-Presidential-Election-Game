/// @description Insert description here
// You can write your code in this editor

if (draw_getpixel(mouse_x, mouse_y) == make_color_rgb(238, 28, 36)) {
for (i = 0; i < array_length(obj_game.election_night_order); i++) {
	if (instance_1.text == obj_game.election_night_order[i].name) {
		selected_state = obj_game.election_night_order[i];
	}
}

switch (instance_2.text) {
	case "100,000":
	if (obj_game.turn_order[obj_game.player_turns].income >= 100000) {
	obj_game.turn_order[obj_game.player_turns].income -= 100000;
	selected_state.cand_score[obj_game.player_turns] += 0.02;
	} else {
	create_text_box(room_width/2 - 400/2, room_height/2 - 185/2, 1, 1, 1, 1, "Error:", "Not enough cash on hand!", ["OK", "OK"]);
	}
	break;
	case "150,000": 
	if (obj_game.turn_order[obj_game.player_turns].income >= 150000) {
	obj_game.turn_order[obj_game.player_turns].income -= 150000;
	selected_state.cand_score[obj_game.player_turns] += 0.03;
	} else {
	create_text_box(room_width/2 - 400/2, room_height/2 - 185/2, 1, 1, 1, 1, "Error:", "Not enough cash on hand!", ["OK", "OK"]);
	}
	break;
	case "200,000": 
	if (obj_game.turn_order[obj_game.player_turns].income >= 200000) {
	obj_game.turn_order[obj_game.player_turns].income -= 200000;
	selected_state.cand_score[obj_game.player_turns] += 0.04;
	} else {
	create_text_box(room_width/2 - 400/2, room_height/2 - 185/2, 1, 1, 1, 1, "Error:", "Not enough cash on hand!", ["OK", "OK"]);
	}
	break;
	case "250,000": 
	if (obj_game.turn_order[obj_game.player_turns].income >= 250000) {
	obj_game.turn_order[obj_game.player_turns].income -= 250000;
	selected_state.cand_score[obj_game.player_turns] += 0.05;
	} else {
	create_text_box(room_width/2 - 400/2, room_height/2 - 185/2, 1, 1, 1, 1, "Error:", "Not enough cash on hand!", ["OK", "OK"]);
	}
	break;
	case "300,000": 
	if (obj_game.turn_order[obj_game.player_turns].income >= 300000) {
	obj_game.turn_order[obj_game.player_turns].income -= 300000;
	selected_state.cand_score[obj_game.player_turns] += 0.10;
	} else {
	create_text_box(room_width/2 - 400/2, room_height/2 - 185/2, 1, 1, 1, 1, "Error:", "Not enough cash on hand!", ["OK", "OK"]);
	}
	break;
	case "400,000": 
	if (obj_game.turn_order[obj_game.player_turns].income >= 400000) {
	obj_game.turn_order[obj_game.player_turns].income -= 400000;
	selected_state.cand_score[obj_game.player_turns] += 0.14;
	} else {
	create_text_box(room_width/2 - 400/2, room_height/2 - 185/2, 1, 1, 1, 1, "Error:", "Not enough cash on hand!", ["OK", "OK"]);
	}
	break;
	case "500,000": 
	if (obj_game.turn_order[obj_game.player_turns].income >= 500000) {
	obj_game.turn_order[obj_game.player_turns].income -= 500000;
	selected_state.cand_score[obj_game.player_turns] += 0.20;
	} else {
	create_text_box(room_width/2 - 400/2, room_height/2 - 185/2, 1, 1, 1, 1, "Error:", "Not enough cash on hand!", ["OK", "OK"]);
	}
	break;
}

instance_destroy();
} else if (draw_getpixel(mouse_x, mouse_y) == make_color_rgb(0, 166, 81)) {
instance_destroy();	
}