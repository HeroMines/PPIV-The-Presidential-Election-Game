/// @description End Game
// You can write your code in this editor

if (!house_contigent_election) {
	if (counter >= 50) {
	screen_save(string(obj_game.dem_candidate.name + obj_game.rep_candidate.name + obj_game.ind_candidate.name + string(current_time) + "." + string(current_month) + "." + string(current_day) + "." + string(current_year) + ".png"));
	obj_tooltip_manager.state_polls_map_mode = true;
		if (max_array(states_electoral_votes, true) < 270) {
			house_contigent_election = true;
			/*top_two_candidates = my_array_sort(states_electoral_votes, true);
			top_two_candidates_index = [0, 0];
			for (i = 0; i < array_length(states_electoral_votes); i++) {
				if (top_two_candidates[0] == states_electoral_votes[i]) {
					top_two_candidates_index[0] = i;	
				}
				if (top_two_candidates[1] == states_electoral_votes[i]) {
					top_two_candidates_index[1] = i;	
				}
			}
			top_two_candidates = [obj_game.turn_order[top_two_candidates_index[0]], obj_game.turn_order[top_two_candidates_index[1]]];*/
			counter = 0;
			obj_tooltip_manager.state_polls_map_mode = false;
			states_electoral_votes = [0, 0, 0]
			with (par_states) {
				image_blend = c_white;
				previous_cand_score = cand_score;
				cand_score = [0, 0, 0];
			}
		} else {
			declare_the_winner = turn_order[max_array(states_electoral_votes, false)].name + " was declared the winner of the Presidential election.";
			obj_back_button.visible = true;
			exit;	
		}
	} else {
	random_chance = choose(0, 1, 2);

		switch (random_chance) {
			case 0:
	        election_night_order[counter].cand_score[0] += irandom_range(-1, 1);
	        election_night_order[counter].cand_score[1] -= irandom_range(-1, 1)/2;
	        election_night_order[counter].cand_score[2] -= irandom_range(-1, 1)/2;
			break;
			case 1:
	        election_night_order[counter].cand_score[0] += irandom_range(-1, 1)/2;
	        election_night_order[counter].cand_score[1] -= irandom_range(-1, 1);
	        election_night_order[counter].cand_score[2] += irandom_range(-1, 1)/2;
			break; 
			case 2:
			election_night_order[counter].cand_score[0] += irandom_range(-1, 1)/2;
	        election_night_order[counter].cand_score[1] -= irandom_range(-1, 1)/2;
	        election_night_order[counter].cand_score[2] += irandom_range(-1, 1);
			break;
		}
		election_night_order[counter].total = election_night_order[counter].cand_score[0] + election_night_order[counter].cand_score[1] + election_night_order[counter].cand_score[2];
		election_night_order[counter].percent = [election_night_order[counter].cand_score[0]/election_night_order[counter].total * 100, election_night_order[counter].cand_score[1]/election_night_order[counter].total * 100, election_night_order[counter].cand_score[2]/election_night_order[counter].total * 100];
		average_population[0] += round((election_night_order[counter].turnout*(election_night_order[counter].percent[0]*0.01)));
		average_population[1] += round((election_night_order[counter].turnout*(election_night_order[counter].percent[1]*0.01)));
		average_population[2] += round((election_night_order[counter].turnout*(election_night_order[counter].percent[2]*0.01)));
		total_population = average_population[0] + average_population[1] + average_population[2];
		if ((election_night_order[counter].cand_score[0] > election_night_order[counter].cand_score[1]) and (election_night_order[counter].cand_score[0] > election_night_order[counter].cand_score[2])) {
			election_night_order[counter].image_blend = make_color_rgb(28, 64, 204);
			states_electoral_votes[0] += election_night_order[counter].electoral_votes;
		} else if ((election_night_order[counter].cand_score[1] > election_night_order[counter].cand_score[0]) and (election_night_order[counter].cand_score[1] > election_night_order[counter].cand_score[2])) {
			election_night_order[counter].image_blend = make_color_rgb(190, 28, 41);
			states_electoral_votes[1] += election_night_order[counter].electoral_votes;
		} else if ((election_night_order[counter].cand_score[2] > election_night_order[counter].cand_score[0]) and (election_night_order[counter].cand_score[2] > election_night_order[counter].cand_score[1])) {
			election_night_order[counter].image_blend = make_color_rgb(70, 140, 69);
			states_electoral_votes[2] += election_night_order[counter].electoral_votes;
		} else {
			election_night_order[counter].image_blend = c_grey;
		}
	++counter;
	}
} else if (house_contigent_election) {
	
if (counter >= 50) {
declare_the_winner = turn_order[max_array(states_electoral_votes, false)].name + " was declared the winner of the House Contingent election.";
screen_save(string(obj_game.dem_candidate.name + obj_game.rep_candidate.name + obj_game.ind_candidate.name + string(current_time) + "." + string(current_month) + "." + string(current_day) + "." + string(current_year) + "." + "HouseCont" + ".png"));
obj_back_button.visible = true;
exit;
} else {
	
	/*for (i = 0; i < array_length(dem_candidate.stats1); i++) {
		if (dem_candidate.stats1[i] > rep_candidate.stats1[i]) {
			election_night_order[counter].cand_score[0] += 0.10;
		}
		if (dem_candidate.stats1[i] > ind_candidate.stats1[i]) {
			election_night_order[counter].cand_score[0] += 0.10;
		}
		if (rep_candidate.stats1[i] > dem_candidate.stats1[i]) {
			election_night_order[counter].cand_score[1] += 0.10;
		}
		if (rep_candidate.stats1[i] > ind_candidate.stats1[i]) {
			election_night_order[counter].cand_score[1] += 0.10;
		}
		if (ind_candidate.stats1[i] > dem_candidate.stats1[i]) {
			election_night_order[counter].cand_score[2] += 0.10;
		}
		if (ind_candidate.stats1[i] > rep_candidate.stats1[i]) {
			election_night_order[counter].cand_score[2] += 0.10;
		}
	}*/
	
	for (i = 0; i < array_length(dem_candidate.stats2); i++) {
			if (election_night_order[counter].bias[i] == dem_candidate.stats2[i]) {
				election_night_order[counter].cand_score[0] += 1;
			} else {
				if (dem_candidate.stats2[i] <= 4) {
					switch (election_night_order[counter].bias[i]) {
							case 0: {
								if (dem_candidate.stats2[i] == 1) {
									election_night_order[counter].cand_score[0] += 0.75;
								} else {
									election_night_order[counter].cand_score[0] += 0.50;
								}
								break;
							}
							case 1: {
								if (dem_candidate.stats2[i] == 0) {
									election_night_order[counter].cand_score[0] += 0.75;
								} else {
									election_night_order[counter].cand_score[0] += 0.50;
								}
								break;
							}
							case 2: {
								if ((dem_candidate.stats2[i] == 1) || (dem_candidate.stats2[i] == 3)) {
									election_night_order[counter].cand_score[0] += 0.75;
								} else {
									election_night_order[counter].cand_score[0] += 0.50;
								}
								break;
							}
							case 3: {
								if (dem_candidate.stats2[i] == 4) {
									election_night_order[counter].cand_score[0] += 0.75;
								} else {
									election_night_order[counter].cand_score[0] += 0.50;
								}
								break;
							}
							case 4: {
								if (dem_candidate.stats2[i] == 3) {
									election_night_order[counter].cand_score[0] += 0.75;
								} else {
									election_night_order[counter].cand_score[0] += 0.50;
								}
								break;
							}
						}
				}
			}
			if (election_night_order[counter].bias[i] == rep_candidate.stats2[i]) {
				election_night_order[counter].cand_score[1] += 1;
			} else {
				if (rep_candidate.stats2[i] <= 4) {
					switch (election_night_order[counter].bias[i]) {
							case 0: {
								if (rep_candidate.stats2[i] == 1) {
									election_night_order[counter].cand_score[1] += 0.75;
								} else {
									election_night_order[counter].cand_score[1] += 0.50;
								}
								break;
							}
							case 1: {
								if (rep_candidate.stats2[i] == 0) {
									election_night_order[counter].cand_score[1] += 0.75;
								} else {
									election_night_order[counter].cand_score[1] += 0.50;
								}
								break;
							}
							case 2: {
								if ((rep_candidate.stats2[i] == 1) || (rep_candidate.stats2[i] == 3)) {
									election_night_order[counter].cand_score[1] += 0.75;
								} else {
									election_night_order[counter].cand_score[1] += 0.50;
								}
								break;
							}
							case 3: {
								if (rep_candidate.stats2[i] == 4) {
									election_night_order[counter].cand_score[1] += 0.75;
								} else {
									election_night_order[counter].cand_score[1] += 0.50;
								}
								break;
							}
							case 4: {
								if (rep_candidate.stats2[i] == 3) {
									election_night_order[counter].cand_score[1] += 0.75;
								} else {
									election_night_order[counter].cand_score[1] += 0.50;
								}
								break;
							}
						}
				}
			}
			if (election_night_order[counter].bias[i] == ind_candidate.stats2[i]) {
				election_night_order[counter].cand_score[2] += 1;
			} else {
				if (ind_candidate.stats2[i] <= 4) {
					switch (election_night_order[counter].bias[i]) {
							case 0: {
								if (ind_candidate.stats2[i] == 1) {
									election_night_order[counter].cand_score[2] += 0.75;
								} else {
									election_night_order[counter].cand_score[2] += 0.50;
								}
								break;
							}
							case 1: {
								if (ind_candidate.stats2[i] == 0) {
									election_night_order[counter].cand_score[2] += 0.75;
								} else {
									election_night_order[counter].cand_score[2] += 0.50;
								}
								break;
							}
							case 2: {
								if ((ind_candidate.stats2[i] == 1) || (ind_candidate.stats2[i] == 3)) {
									election_night_order[counter].cand_score[2] += 0.75;
								} else {
									election_night_order[counter].cand_score[2] += 0.50;
								}
								break;
							}
							case 3: {
								if (ind_candidate.stats2[i] == 4) {
									election_night_order[counter].cand_score[2] += 0.75;
								} else {
									election_night_order[counter].cand_score[2] += 0.50;
								}
								break;
							}
							case 4: {
								if (ind_candidate.stats2[i] == 3) {
									election_night_order[counter].cand_score[2] += 0.75;
								} else {
									election_night_order[counter].cand_score[2] += 0.50;
								}
								break;
							}
						}
				}
			}
		}
	}
	
	if ((election_night_order[counter].cand_score[0] > election_night_order[counter].cand_score[1]) and (election_night_order[counter].cand_score[0] > election_night_order[counter].cand_score[2])) {
		election_night_order[counter].image_blend = make_color_rgb(28, 64, 204);
		states_electoral_votes[0] += 1;
	} else if ((election_night_order[counter].cand_score[1] > election_night_order[counter].cand_score[0]) and (election_night_order[counter].cand_score[1] > election_night_order[counter].cand_score[2])) {
		election_night_order[counter].image_blend = make_color_rgb(190, 28, 41);
		states_electoral_votes[1] += 1;
	} else if ((election_night_order[counter].cand_score[2] > election_night_order[counter].cand_score[0]) and (election_night_order[counter].cand_score[2] > election_night_order[counter].cand_score[1])) {
		election_night_order[counter].image_blend = make_color_rgb(70, 140, 69);
		states_electoral_votes[2] += 1;
	} else {
		if ((election_night_order[counter].previous_cand_score[0] > election_night_order[counter].previous_cand_score[1]) and (election_night_order[counter].previous_cand_score[0] > election_night_order[counter].previous_cand_score[2])) {
			election_night_order[counter].image_blend = make_color_rgb(28, 64, 204);
			states_electoral_votes[0] += 1;
		} else if ((election_night_order[counter].previous_cand_score[1] > election_night_order[counter].previous_cand_score[0]) and (election_night_order[counter].previous_cand_score[1] > election_night_order[counter].previous_cand_score[2])) {
			election_night_order[counter].image_blend = make_color_rgb(190, 28, 41);
			states_electoral_votes[1] += 1;
		} else if ((election_night_order[counter].previous_cand_score[2] > election_night_order[counter].previous_cand_score[0]) and (election_night_order[counter].previous_cand_score[2] > election_night_order[counter].previous_cand_score[1])) {
			election_night_order[counter].image_blend = make_color_rgb(70, 140, 69);
			states_electoral_votes[2] += 1;
		}
		//election_night_order[counter].image_blend = c_grey;
	}
	
	++counter;	
}

alarm[1] = room_speed * 1;