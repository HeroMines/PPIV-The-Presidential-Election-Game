/// @description Insert description here
// You can write your code in this editor

	switch (instance_1.text) {
		case "Bribe Newspaper": 
		chance = irandom(100);
		
		if (chance >= 90) {
			create_text_box(room_width/2 - 400/2, room_height/2 - 185/2, 1, 1, 1, 1, "", "Newspaper bribery successful, support gained in state.", ["OK", "OK"]);
			obj_game.turn_order[obj_game.player_turns].states[obj_game.rounds].cand_score[obj_game.player_turns] += 0.50;
		} else if (chance < 90) {
			create_text_box(room_width/2 - 400/2, room_height/2 - 185/2, 1, 1, 1, 1, "", "Newspaper bribery unsuccessful, support lost in state.", ["OK", "OK"]);
			obj_game.turn_order[obj_game.player_turns].states[obj_game.rounds].cand_score[obj_game.player_turns] -= 0.50;
		}
		break;
		case "Accept Illegal Contr.": 
		chance = irandom(100);
		
		if (chance >= 60) {
			create_text_box(room_width/2 - 400/2, room_height/2 - 185/2, 1, 1, 1, 1, "", "Successful, cash sent to your account.", ["OK", "OK"]);
			obj_game.turn_order[obj_game.player_turns].income += irandom_range(200000, (500000 * obj_game.turn_order[obj_game.player_turns].stats1[3]))
		} else if (chance < 60) {
			create_text_box(room_width/2 - 400/2, room_height/2 - 185/2, 1, 1, 1, 1, "", "Unsuccessful, support lost in every state.", ["OK", "OK"]);
			with (par_states) {
			cand_score[obj_game.player_turns] -= 0.15;	
			}
		}
		break;
		case "Leak False Rumor": 
		chance = irandom(100);
		
		if (chance >= 80) {
			create_text_box(room_width/2 - 400/2, room_height/2 - 185/2, 1, 1, 1, 1, "", "False rumors spread, support gained in every state.", ["OK", "OK"]);
			with (par_states) {
			cand_score[obj_game.player_turns] += 0.15;	
			}
		} else if (chance < 80) {
			create_text_box(room_width/2 - 400/2, room_height/2 - 185/2, 1, 1, 1, 1, "", "Unsuccessful, support lost in every state.", ["OK", "OK"]);
			with (par_states) {
			cand_score[obj_game.player_turns] -= 0.15;	
			}
		}
		break;
		case "Attack Moral Character": 
		chance = irandom(100);
		
		if (chance >= 60) {
			create_text_box(room_width/2 - 400/2, room_height/2 - 185/2, 1, 1, 1, 1, "", "Successful character assassination, voters swayed.", ["OK", "OK"]);
			obj_game.turn_order[obj_game.player_turns].states[obj_game.rounds].cand_score[obj_game.player_turns] += 0.10;	
		} else if (chance < 60) {
			create_text_box(room_width/2 - 400/2, room_height/2 - 185/2, 1, 1, 1, 1, "", "Character assassination failed, lost support in state.", ["OK", "OK"]);
			obj_game.turn_order[obj_game.player_turns].states[obj_game.rounds].cand_score[obj_game.player_turns] -= 0.15;
		}
		break;
	}
	
instance_destroy();