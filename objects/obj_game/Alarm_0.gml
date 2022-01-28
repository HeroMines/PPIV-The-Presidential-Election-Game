/// @description Calculate/Update Results
// You can write your code in this editor

if ((par_states.cand_score[0] == 0) && (par_states.cand_score[1] == 0) && (par_states.cand_score[2] == 0) && (!global.loaded_game)) {	//Calculate
	for (i = 0; i < array_length(dem_candidate.stats1); i++) {
		if (dem_candidate.stats1[i] > rep_candidate.stats1[i]) {
			par_states.cand_score[0] += 0.10;
		}
		if (dem_candidate.stats1[i] > ind_candidate.stats1[i]) {
			par_states.cand_score[0] += 0.10;
		}
		if (rep_candidate.stats1[i] > dem_candidate.stats1[i]) {
			par_states.cand_score[1] += 0.10;
		}
		if (rep_candidate.stats1[i] > ind_candidate.stats1[i]) {
			par_states.cand_score[1] += 0.10;
		}
		if (ind_candidate.stats1[i] > dem_candidate.stats1[i]) {
			par_states.cand_score[2] += 0.10;
		}
		if (ind_candidate.stats1[i] > rep_candidate.stats1[i]) {
			par_states.cand_score[2] += 0.10;
		}
	}
	
	stamina = [2.5 * dem_candidate.stats1[5], 2.5 * rep_candidate.stats1[5], 2.5 * ind_candidate.stats1[5]];
	
	with (par_states) {
		if (party_bias == "NA") {
			if (name == obj_game.dem_candidate.home_state) {
				cand_score[0] += 0.50;	
			}
			if (name == obj_game.rep_candidate.home_state) {
				cand_score[1] += 0.50;	
			}
			if (name == obj_game.ind_candidate.home_state) {
				cand_score[2] += 0.50;	
			}
		}
	}
	
	with (par_states) {
		for (i = 0; i < array_length(other.dem_candidate.stats2); i++) {
			if (bias[i] == other.dem_candidate.stats2[i]) {
				cand_score[0] += 1;
			} else {
				if (other.dem_candidate.stats2[i] <= 4) {
				cand_score[0] += 0.50;
				}
			}
			if (bias[i] == other.rep_candidate.stats2[i]) {
				cand_score[1] += 1;
			} else {
				if (other.rep_candidate.stats2[i] <= 4) {
				cand_score[1] += 0.50;
				}
			}
			if (bias[i] == other.ind_candidate.stats2[i]) {
				cand_score[2] += 1;
			} else {
				if (other.ind_candidate.stats2[i] <= 4) {
				cand_score[2] += 0.50;
				}
			}
		}
	}
	
	preset_array = variable_struct_get_names(preset);
	for (i = 0; i < variable_struct_names_count(preset); i++) {
		if (variable_struct_get(preset, preset_array[i]) == false) {
			thirteen_keys_counter += 1;
		}
	}
	preset_array = 0;

	with (par_states) {
	
		pop_array = create_people(100, party_afil);	
		for (k = 0; k < array_length(pop_array); k++) {
			for (j = 0; j < array_length(pop_array[0]); j++) {
				if (other.dem_candidate.stats2[j] == pop_array[k][j]) {
							cand_score[0] += 0.10;
				} else {
					/*if (other.dem_candidate.stats2[j] <= 4) {
						cand_score[0] += 0.02;
					}*/
				if (other.dem_candidate.stats2[j] <= 4) {
						switch (pop_array[k][j]) {
							case 0: {
								if (other.dem_candidate.stats2[j] == 1) {
									cand_score[0] += 0.05;
								} else {
									cand_score[0] += 0.02;
								}
								break;
							}
							case 1: {
								if (other.dem_candidate.stats2[j] == 0) {
									cand_score[0] += 0.05;
								} else {
									cand_score[0] += 0.02;
								}
								break;
							}
							case 2: {
								if ((other.dem_candidate.stats2[j] == 1) || (other.dem_candidate.stats2[j] == 3)) {
									cand_score[0] += 0.05;
								} else {
									cand_score[0] += 0.02;
								}
								break;
							}
							case 3: {
								if (other.dem_candidate.stats2[j] == 4) {
									cand_score[0] += 0.05;
								} else {
									cand_score[0] += 0.02;
								}
								break;
							}
							case 4: {
								if (other.dem_candidate.stats2[j] == 3) {
									cand_score[0] += 0.05;
								} else {
									cand_score[0] += 0.02;
								}
								break;
							}
						}
					}
				}
						
				if (other.rep_candidate.stats2[j] == pop_array[k][j]) {
							cand_score[1] += 0.10;
				} else {
					/*if (other.rep_candidate.stats2[j] <= 4) {
						cand_score[1] += 0.02;
					}*/
				if (other.rep_candidate.stats2[j] <= 4) {
						switch (pop_array[k][j]) {
							case 0: {
								if (other.rep_candidate.stats2[j] == 1) {
									cand_score[1] += 0.05;
								} else {
									cand_score[1] += 0.02;
								}
								break;
							}
							case 1: {
								if (other.rep_candidate.stats2[j] == 0) {
									cand_score[1] += 0.05;
								} else {
									cand_score[1] += 0.02;
								}
								break;
							}
							case 2: {
								if ((other.rep_candidate.stats2[j] == 1) || (other.rep_candidate.stats2[j] == 3)) {
									cand_score[1] += 0.05;
								} else {
									cand_score[1] += 0.02;
								}
								break;
							}
							case 3: {
								if (other.rep_candidate.stats2[j] == 4) {
									cand_score[1] += 0.05;
								} else {
									cand_score[1] += 0.02;
								}
								break;
							}
							case 4: {
								if (other.rep_candidate.stats2[j] == 3) {
									cand_score[1] += 0.05;
								} else {
									cand_score[1] += 0.02;
								}
								break;
							}
						}
					}
				}
						
				if (other.ind_candidate.stats2[j] == pop_array[k][j]) {
						cand_score[2] += 0.10;
				} else {
					/*if (other.ind_candidate.stats2[j] <= 4) {
						cand_score[2] += 0.02;
					}*/
				if (other.ind_candidate.stats2[j] <= 4) {
						switch (pop_array[k][j]) {
							case 0: {
								if (other.ind_candidate.stats2[j] == 1) {
									cand_score[2] += 0.05;
								} else {
									cand_score[2] += 0.02;
								}
								break;
							}
							case 1: {
								if (other.ind_candidate.stats2[j] == 0) {
									cand_score[2] += 0.05;
								} else {
									cand_score[2] += 0.02;
								}
								break;
							}
							case 2: {
								if ((other.ind_candidate.stats2[j] == 1) || (other.ind_candidate.stats2[j] == 3)) {
									cand_score[2] += 0.05;
								} else {
									cand_score[2] += 0.02;
								}
								break;
							}
							case 3: {
								if (other.ind_candidate.stats2[j] == 4) {
									cand_score[2] += 0.05;
								} else {
									cand_score[2] += 0.02;
								}
								break;
							}
							case 4: {
								if (other.ind_candidate.stats2[j] == 3) {
									cand_score[2] += 0.05;
								} else {
									cand_score[2] += 0.02;
								}
								break;
							}
						}
					}
				}
			}
		}
	
		if (other.thirteen_keys_counter >= 6) {
			if (other.is_incumbent) {
				if (other.incumbent == other.dem_candidate) {
					if (party_bias == "NA") {
					cand_score[0] += other.incumbent_advantage;
					cand_score[1] += 2.0;
					}
				} else if (other.incumbent == other.rep_candidate) {
					if (party_bias == "NA") {
					cand_score[1] += other.incumbent_advantage;
					cand_score[0] += 2.0;
					}
				}
			} else if (!other.is_incumbent) {
				if (variable_struct_get(other.preset, "incumb_party") == "D") {
					if (party_bias == "NA") {
					cand_score[1] += 2.0;
					}
				} else if (variable_struct_get(other.preset, "incumb_party") == "R") {
					if (party_bias == "NA") {
					cand_score[0] += 2.0;
					}
				}
			}
		} else if (other.thirteen_keys_counter <= 5) {
			if (other.is_incumbent) {
				if (other.incumbent == other.dem_candidate) {
					if (party_bias == "NA") {
					cand_score[0] += 2.0;
					cand_score[0] += other.incumbent_advantage;
					}
				} else if (other.incumbent == other.rep_candidate) {
					if (party_bias == "NA") {
					cand_score[1] += 2.0;
					cand_score[1] += other.incumbent_advantage;
					}
				}
			} else if (!other.is_incumbent) {
				if (variable_struct_get(other.preset, "incumb_party") == "D") {
					if (party_bias == "NA") {
					cand_score[0] += 2.0;
					}
				} else if (variable_struct_get(other.preset, "incumb_party") == "R") {
					if (party_bias == "NA") {
					cand_score[1] += 2.0;
					}
				}
			}
		}
	}
}

global.average_percent = [0, 0, 0];
states_electoral_votes = [0, 0, 0];

with (par_states) { //Update
	total = cand_score[0] + cand_score[1] + cand_score[2];
	percent = [cand_score[0]/total * 100, cand_score[1]/total * 100, cand_score[2]/total * 100];
	percent_array = my_array_sort(percent, false);
	global.average_percent[0] += percent[0];
	global.average_percent[1] += percent[1];
	global.average_percent[2] += percent[2];
	//percent = 0;
	vote_margin = percent_array[0] - percent_array[1];

	if ((cand_score[0] > cand_score[1]) and (cand_score[0] > cand_score[2])) {
		if (vote_margin <= 1) {
			image_blend = make_color_rgb(148, 155, 179);
		} else if (vote_margin <= 5) {
			image_blend = make_color_rgb(138, 175, 255);
		} else if (vote_margin >= 5) {
			image_blend = make_color_rgb(28, 64, 204);
		}
		other.states_electoral_votes[0] += electoral_votes;
	} else if ((cand_score[1] > cand_score[0]) and (cand_score[1] > cand_score[2])) {
		if (vote_margin <= 1) {
			image_blend = make_color_rgb(255, 139, 152);
		} else if (vote_margin <= 5) {
			image_blend = make_color_rgb(255, 88, 100);
		} else if (vote_margin >= 5) {
			image_blend = make_color_rgb(190, 28, 41);
		}
		other.states_electoral_votes[1] += electoral_votes;
	} else if ((cand_score[2] > cand_score[0]) and (cand_score[2] > cand_score[1])) {
		if (vote_margin <= 1) {
			image_blend = make_color_rgb(178, 251, 172);
		} else if (vote_margin <= 5) {
			image_blend = make_color_rgb(123, 194, 119);
		} else if (vote_margin >= 5) {
			image_blend = make_color_rgb(70, 140, 69);
		}
		other.states_electoral_votes[2] += electoral_votes;
	} else {
		image_blend = c_grey;
	}
	
if (other.thirteen_keys_counter >= 6) {
	if (other.is_incumbent) {
		if (other.incumbent == other.dem_candidate) {
			if (party_bias == "NA") {
				cand_score[1] += 0.05;
				}
			} else if (other.incumbent == other.rep_candidate) {
				if (party_bias == "NA") {
				cand_score[0] += 0.05;
				}
			}
		} else if (!other.is_incumbent) {
			if (variable_struct_get(other.preset, "incumb_party") == "D") {
				if (party_bias == "NA") {
				cand_score[1] += 0.05;
				}
			} else if (variable_struct_get(other.preset, "incumb_party") == "R") {
				if (party_bias == "NA") {
				cand_score[0] += 0.05;
				}
			}
		}
	} else if (other.thirteen_keys_counter <= 5) {
			if (other.is_incumbent) {
				if (other.incumbent == other.dem_candidate) {
					if (party_bias == "NA") {
					cand_score[0] += 0.05;
					}
				} else if (other.incumbent == other.rep_candidate) {
					if (party_bias == "NA") {
					cand_score[1] += 0.05;
					}
				}
			} else if (!other.is_incumbent) {
			if (variable_struct_get(other.preset, "incumb_party") == "D") {
				if (party_bias == "NA") {
				cand_score[0] += 0.05;
				}
			} else if (variable_struct_get(other.preset, "incumb_party") == "R") {
				if (party_bias == "NA") {
				cand_score[1] += 0.05;
				}
			}
		}
	}
}

if (!turn_order[player_turns].scheduling_complete) and (turn_order[player_turns].state == "Human") {
	//Do Nothing
} else {
	player_turns += 1;	
}

if (stamina[0] > 10) {
	stamina[0] = 10;
}
if (stamina[1] > 10) {
	stamina[1] = 10;
}
if (stamina[2] > 10) {
	stamina[2] = 10;
}


if (player_turns > 2) {
	player_turns = 0;
	rounds += 1;
	if (rounds > 6) {
	rounds = 0;
	if (dem_candidate.state == "Human") {
		dem_candidate.states = [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania];
		dem_candidate.scheduling_complete = false;
	} else {
		states_vote_margins = 0;
		states_vote_margins = [];
		states_vote_margins_id = 0;
		states_vote_margins_id = [];
		with (par_states) {
			array_push(other.states_vote_margins, vote_margin);
		}
		states_vote_margins = my_array_sort(states_vote_margins, true);
		with (par_states) {
			if (other.states_vote_margins[0] == vote_margin) {
				array_push(other.states_vote_margins_id, id);
			}
			if (other.states_vote_margins[1] == vote_margin) {
				array_push(other.states_vote_margins_id, id);
			}
			if (other.states_vote_margins[2] == vote_margin) {
				array_push(other.states_vote_margins_id, id);
			}
		}
		dem_candidate.states = [states_vote_margins_id[0], choose(obj_florida, obj_georgia, obj_texas, obj_ohio, obj_wisconsin, obj_michigan, obj_pennsylvania), states_vote_margins_id[1], choose(obj_florida, obj_georgia, obj_texas, obj_ohio, obj_wisconsin, obj_michigan, obj_pennsylvania), states_vote_margins_id[2], choose(obj_florida, obj_georgia, obj_texas, obj_ohio, obj_wisconsin, obj_michigan, obj_pennsylvania), states_vote_margins_id[1]];
	}
	if (rep_candidate.state == "Human") {
		rep_candidate.states = [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania];
		rep_candidate.scheduling_complete = false;
	} else {
		states_vote_margins = 0;
		states_vote_margins = [];
		states_vote_margins_id = 0;
		states_vote_margins_id = [];
		with (par_states) {
			array_push(other.states_vote_margins, vote_margin);
		}
		states_vote_margins = my_array_sort(states_vote_margins, true);
		with (par_states) {
			if (other.states_vote_margins[0] == vote_margin) {
				array_push(other.states_vote_margins_id, id);
			}
			if (other.states_vote_margins[1] == vote_margin) {
				array_push(other.states_vote_margins_id, id);
			}
			if (other.states_vote_margins[2] == vote_margin) {
				array_push(other.states_vote_margins_id, id);
			}
		}
		rep_candidate.states = [states_vote_margins_id[0], choose(obj_florida, obj_georgia, obj_texas, obj_ohio, obj_wisconsin, obj_michigan, obj_pennsylvania), states_vote_margins_id[1], choose(obj_florida, obj_georgia, obj_texas, obj_ohio, obj_wisconsin, obj_michigan, obj_pennsylvania), states_vote_margins_id[2], choose(obj_florida, obj_georgia, obj_texas, obj_ohio, obj_wisconsin, obj_michigan, obj_pennsylvania), states_vote_margins_id[1]];
	}
	if (ind_candidate.state == "Human") {
		ind_candidate.states = [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania];
		ind_candidate.scheduling_complete = false;
	} else {
		states_vote_margins = 0;
		states_vote_margins = [];
		states_vote_margins_id = 0;
		states_vote_margins_id = [];
		with (par_states) {
			array_push(other.states_vote_margins, vote_margin);
		}
		states_vote_margins = my_array_sort(states_vote_margins, true);
		with (par_states) {
			if (other.states_vote_margins[0] == vote_margin) {
				array_push(other.states_vote_margins_id, id);
			}
			if (other.states_vote_margins[1] == vote_margin) {
				array_push(other.states_vote_margins_id, id);
			}
			if (other.states_vote_margins[2] == vote_margin) {
				array_push(other.states_vote_margins_id, id);
			}
		}
		ind_candidate.states = [states_vote_margins_id[0], choose(obj_florida, obj_georgia, obj_texas, obj_ohio, obj_wisconsin, obj_michigan, obj_pennsylvania), states_vote_margins_id[1], choose(obj_florida, obj_georgia, obj_texas, obj_ohio, obj_wisconsin, obj_michigan, obj_pennsylvania), states_vote_margins_id[2], choose(obj_florida, obj_georgia, obj_texas, obj_ohio, obj_wisconsin, obj_michigan, obj_pennsylvania), states_vote_margins_id[1]];
	}
	game_turns += 1;
	}
	if (game_turns > campaign_length) {
	layer_set_visible("Assets_2", true);
	layer_set_visible("Assets_1", false);
	with (obj_info_box) {
		if (purpose != 6){
			if (purpose != 8) {
			instance_destroy();	
			}
		}
		visible = true;
	}
	instance_destroy(obj_menu);
	instance_destroy(obj_menuItem);
	instance_destroy(obj_text_box);
	obj_tooltip_manager.margins_map_mode = false;
	obj_tooltip_manager.state_polls_map_mode = false;
	states_electoral_votes = [0, 0, 0];

		with (par_states) {
			image_blend = c_white;
			y -= 125;
		}
	alarm[1] = room_speed * 0.10
	exit;
	}
}

create_text_box(room_width/2 - 400/2, room_height/2 - 185/2, 1, 1, 1, 0, "Begin Turn:", "It's time to start planning " + turn_order[player_turns].name + "'s campaign activity.", ["OK", "OK"]);