/// @description Insert description here
// You can write your code in this editor

//if (!obj_game.hide_objects) exit;
if (!visible) exit;

draw_self();

draw_set_color(c_black);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

switch (purpose) {
	case 0: { // Name box
	text = obj_game.turn_order[obj_game.player_turns].name;
	draw_text(centerX, centerY, text);
	break;	
	}
	case 1: { // Percentage box
	if (global.average_percent == 0) {
		exit;
		} else {
			max_index = max_array(global.average_percent, false);
			switch (max_index) {
				case 0: {
				draw_set_color(c_blue);
				break;	
				}
				case 1: {
				draw_set_color(c_red);
				break;	
				}
				case 2: {
				draw_set_color(c_green);
				break;	
				}
			}
			draw_text(centerX, centerY, string(max_array(global.average_percent, true)/50) + "%");
		}
	break;
	}
	case 2: { //Activity box
	draw_text(centerX, centerY, "Campaign in " + string(obj_game.turn_order[obj_game.player_turns].states[obj_game.rounds].name));
	break;
	}
	case 3: { //Stamina box
	draw_text(centerX, centerY, "Stamina: " + string(obj_game.stamina[obj_game.player_turns]));
	break;
	}
	case 4: { //Week box
	draw_text(centerX, centerY, "Week " + string(obj_game.game_turns) + ": Day " + string(obj_game.rounds + 1));
	break;
	}
	case 5: { //Electoral vote counter
	draw_text(centerX - centerX/2.5, centerY, "Democrat:   " + string(obj_game.states_electoral_votes[0]));
	draw_text(centerX - 16, centerY, "Republican:  " + string(obj_game.states_electoral_votes[1]));
	draw_text(centerX + centerX/2.5 - 30, centerY, "Independent:  " + string(obj_game.states_electoral_votes[2]));
	break;
	}
	case 6: { //Election night box
	draw_text(centerX - centerX/1.6, centerY - centerY/12, obj_game.dem_candidate.name);
	draw_text(centerX, centerY - centerY/12, string_thousands(obj_game.average_population[0]));
	draw_text(centerX + centerX/2.5, centerY - centerY/12, string((obj_game.average_population[0]/obj_game.total_population)*100) + "%");
	draw_text(centerX + centerX/1.28, centerY - centerY/12, string(obj_game.states_electoral_votes[0]));
	//Rep
	draw_text(centerX - centerX/1.6, centerY, obj_game.rep_candidate.name);
	draw_text(centerX, centerY, string_thousands(obj_game.average_population[1]));
	draw_text(centerX + centerX/2.5, centerY, string((obj_game.average_population[1]/obj_game.total_population)*100) + "%");
	draw_text(centerX + centerX/1.28, centerY, string(obj_game.states_electoral_votes[1]));
	//Ind
	draw_text(centerX - centerX/1.6, centerY + centerY/12, obj_game.ind_candidate.name);
	draw_text(centerX, centerY + centerY/12, string_thousands(obj_game.average_population[2]));
	draw_text(centerX + centerX/2.5, centerY + centerY/12, string((obj_game.average_population[2]/obj_game.total_population)*100) + "%");
	draw_text(centerX + centerX/1.28, centerY + centerY/12, string(obj_game.states_electoral_votes[2]));
	break;
	}
	case 7: { //Cash box
		try {
		draw_text(centerX, centerY, "Cash: " + "$" + string_thousands(obj_game.turn_order[obj_game.player_turns].income));
		} catch (_exception) {
		obj_game.turn_order[obj_game.player_turns].income += 1000000;
		}
		break;
	}
	case 8: { //Winner Box
		draw_text_ext(centerX, centerY, obj_game.declare_the_winner, -1, sprite_width - 6);
		break;
	}
}

