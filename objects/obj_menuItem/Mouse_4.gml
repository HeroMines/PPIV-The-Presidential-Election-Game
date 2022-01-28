/// @description Insert description here
// You can write your code in this editor

switch (purpose) {
	case 0: {
		with (par)
		{
			for (i = 0; i < array_length(list); i++) {
				if (list[i].name == other.text) {
					image = list[i].pic;
			
					switch (can_num) {
						case 0: {
							obj_game.dem_candidate = list[i];
							if (obj_game.is_incumbent) {
								obj_game.incumbent = obj_game.dem_candidate;
							}
							obj_game.turn_order[0] = list[i];
							break;
						}
						case 1: {
							obj_game.rep_candidate = list[i];
							obj_game.turn_order[1] = list[i];
							break;
						}
						case 2: {
							obj_game.ind_candidate = list[i];
							obj_game.turn_order[2] = list[i];
							break;
						}
						//break;
					}
				}
			}
    
		    text = other.text;
		}

		with (obj_menuItem) {
	
		instance_destroy();

		}
		break;
	}
	case 1: { //States
		with (par) {
		
			switch (can_num) {
				case 0: {
					obj_game.dem_candidate.state = other.text;
					break;
				}
				case 1: {
					obj_game.rep_candidate.state = other.text;
					break;
				}
				case 2: {
					obj_game.ind_candidate.state = other.text;
					break;
				}
				break;
			}

			text = other.text;
		}

		with (obj_menuItem) {
	
		instance_destroy();

		}
		break;
	}
	case 2: { //Election Preferences
		with (par) {
		
		text = other.text;
		
			switch (text) {
				case "1 Debate Per Game": {
					obj_game.debate_frequency = 1;
					break;
				}
				case "2 Debates Per Game": {
					obj_game.debate_frequency = 2;
					break;
				}
				case "3 Debates Per Game": {
					obj_game.debate_frequency = 3;
					break;
				}
				case "4 Debates Per Game": {
					obj_game.debate_frequency = 4;
					break;
				}
				case "5 Debates Per Game": {
					obj_game.debate_frequency = 5;
					break;
				}
				case "Very Slow": {
					obj_game.computer_delay = 2;
					break;
				}
				case "Slow": {
					obj_game.computer_delay = 1;
					break;
				}
				case "Normal": {
					obj_game.computer_delay = 0.7;
					break;
				}
				case "Fast": {
					obj_game.computer_delay = 0.5;
					break;
				}
				case "Very Fast": {
					obj_game.computer_delay = 0.2;
					break;
				}
				case "4 Weeks": {
					obj_game.campaign_length = 4;
					break;
				}
				case "8 Weeks": {
					obj_game.campaign_length = 8;
					break;
				}
				case "12 Weeks": {
					obj_game.campaign_length = 12;
					break;
				}
				case "No Incumbent": {
					obj_game.incumbent_advantage = 0;
					obj_game.is_incumbent = false;
					break;
				}
				case "Small Advantage": {
					obj_game.incumbent_advantage = 0.10;
					if (obj_game.is_incumbent == false) {
					obj_game.is_incumbent = true;	
					}
					break;
				}
				case "Medium Advantage": {
					obj_game.incumbent_advantage = 0.20;
					if (obj_game.is_incumbent == false) {
					obj_game.is_incumbent = true;	
					}
					break;
				}
				case "Large Advantage": {
					obj_game.incumbent_advantage = 0.50;
					if (obj_game.is_incumbent == false) {
					obj_game.is_incumbent = true;	
					}
					break;
				}
				break;
			}
			
		}

		with (obj_menuItem) {
	
		instance_destroy();

		}
		break;
	}
	case 3: { //Election Preferences - Incumbent
		with (par) {
		
		text = other.text;
		
			switch (text) {
				case obj_game.dem_candidate.name: {
					obj_game.incumbent = obj_game.dem_candidate;
					break;
				}
				case obj_game.rep_candidate.name: {
					obj_game.incumbent = obj_game.rep_candidate;
					break;
				}
				case obj_game.ind_candidate.name: {
					obj_game.incumbent = obj_game.ind_candidate;
					break;
				}
				break;
			}
		
		}

		with (obj_menuItem) {
	
		instance_destroy();

		}
		break;
	}
	case 4: { //Activity Manager
		with (par) {
		
		text = other.text;
		
			switch (text) {
				case "Campaign": {
					break;
				}
				case "Press Conference": {
					break;
				}
				case "Rest": {
					break;
				}
				case "Fund Raising": {
					break;
				}
				break;
			}
		
		}
		
		obj_game.turn_order[obj_game.player_turns].campaign_activity[0] = obj_activity_manager.instance_1.text;
		obj_game.turn_order[obj_game.player_turns].campaign_activity[1] = obj_activity_manager.instance_2.text;
		obj_game.turn_order[obj_game.player_turns].campaign_activity[2] = obj_activity_manager.instance_3.text;
		obj_game.turn_order[obj_game.player_turns].campaign_activity[3] = obj_activity_manager.instance_4.text;

			
	    obj_activity_manager.rest_counter = 0;
	    obj_activity_manager.expenditure = 0;
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
				}
			}

		with (obj_menuItem) {
	
		instance_destroy();

		}
		break;
	}
	case 5: { //Game Options
		with (par) {
		
		//text = other.text;
		
			switch (other.text) {
				case "Save Game": {
					save_game();
					break;
				}
				case "About": {
					if (!instance_exists(obj_text_box)) {
					create_text_box(room_width/2 - 480/2, room_height/2 - 222/2, 1.2, 1.2, 1, 1, "About: ", "Power Politics IV: The Presidential Election Game\nIn memoriam: Randy Chase(1953-2009)", ["OK", "OK"]);
					}
					break;
				}
				case "Exit Game": {
					game_end();
					break;
				}
				case "Margins": {
					if (obj_tooltip_manager.state_polls_map_mode) obj_tooltip_manager.state_polls_map_mode = false;
					obj_tooltip_manager.margins_map_mode = !obj_tooltip_manager.margins_map_mode;
					if (obj_game.turn_order[obj_game.player_turns].state == "Computer") {
						if (instance_exists(obj_text_box)) {
						instance_destroy(obj_text_box);
						}
					obj_start_button.purpose = 0;
					obj_start_button.visible = true;
					}
					break;
				}
				case "Screenshot": {
					if (obj_game.turn_order[obj_game.player_turns].state == "Computer") {
						if (instance_exists(obj_text_box)) {
						instance_destroy(obj_text_box);
						}
					obj_start_button.purpose = 0;
					obj_start_button.visible = true;
					}
					alarm[0] = room_speed * 0.15;
					break;
				}
				case "Campaign Sched.": {
					if (obj_game.turn_order[obj_game.player_turns].state == "Human") {
						if (!instance_exists(obj_activity_manager)) {
							instance_create_depth(room_width/2, room_height/2, -1, obj_activity_manager);
						} else {
							instance_destroy(obj_activity_manager);	
						}
					}
					break;
				}
				case "Debating": {
					if (obj_game.turn_order[obj_game.player_turns].state == "Human") {
						if (!instance_exists(obj_text_box)) {
							debating_score[0] = obj_game.dem_candidate.stats1[2] + obj_game.dem_candidate.stats1[4] + obj_game.dem_candidate.stats1[5] + obj_game.dem_candidate.stats1[7] + irandom(3);
							debating_score[1] = obj_game.rep_candidate.stats1[2] + obj_game.rep_candidate.stats1[4] + obj_game.rep_candidate.stats1[5] + obj_game.rep_candidate.stats1[7] + irandom(3);
							debating_score[2] = obj_game.ind_candidate.stats1[2] + obj_game.ind_candidate.stats1[4] + obj_game.ind_candidate.stats1[5] + obj_game.ind_candidate.stats1[7] + irandom(3);
					
							if (obj_game.debate_frequency > 0) {
								if (debating_score[0] > debating_score[1]) && (debating_score[0] > debating_score[2]) {
								create_text_box(room_width/2 - 400/2, room_height/2 - 185/2, 1, 1, 1, 1, "", obj_game.dem_candidate.name + " wins the Presidential debate. Support gained in every state.", ["OK", "OK"]);
									with (par_states) {
										cand_score[0] += 0.10;
									}
									obj_game.debate_frequency -= 1;
								} else if (debating_score[1] > debating_score[0]) && (debating_score[1] > debating_score[2]) {
								create_text_box(room_width/2 - 400/2, room_height/2 - 185/2, 1, 1, 1, 1, "", obj_game.rep_candidate.name + " wins the Presidential debate. Support gained in every state.", ["OK", "OK"]);
									with (par_states) {
										cand_score[1] += 0.10;
									}
									obj_game.debate_frequency -= 1;
								} else if (debating_score[2] > debating_score[0]) && (debating_score[2] > debating_score[1]) {
								create_text_box(room_width/2 - 400/2, room_height/2 - 185/2, 1, 1, 1, 1, "", obj_game.ind_candidate.name + " wins the Presidential debate. Support gained in every state.", ["OK", "OK"]);
									with (par_states) {
										cand_score[2] += 0.10;
									}
									obj_game.debate_frequency -= 1;
								} else {
								create_text_box(room_width/2 - 400/2, room_height/2 - 185/2, 1, 1, 1, 1, "", "Nobody wins the Presidential debate.", ["OK", "OK"]);
								obj_game.debate_frequency -= 1;
								}
							} else if (obj_game.debate_frequency <= 0) {
								create_text_box(room_width/2 - 400/2, room_height/2 - 185/2, 1, 1, 1, 1, "", "All scheduled debates have been done.", ["OK", "OK"]);
							}
						}
					}
					break;
				}
				case "Dirty Tricks": {
					if (obj_game.turn_order[obj_game.player_turns].state == "Human") {
						if (!instance_exists(obj_dirty_tricks)) {
							instance_create_depth(room_width/2, room_height/2, -1, obj_dirty_tricks);
						}
					}
					break;
				}
				case "State Poll": {
					if (obj_tooltip_manager.margins_map_mode) obj_tooltip_manager.margins_map_mode = false;
					obj_tooltip_manager.state_polls_map_mode = !obj_tooltip_manager.state_polls_map_mode;
					if (obj_game.turn_order[obj_game.player_turns].state == "Computer") {
						if (instance_exists(obj_text_box)) {
						instance_destroy(obj_text_box);
						}
					obj_start_button.purpose = 0;
					obj_start_button.visible = true;
					}
					break;
				}
				case "State Advert.": {
				if (obj_game.turn_order[obj_game.player_turns].state == "Human") {
					if (instance_exists(obj_state_advertising)) break;
					instance_create_depth(room_width/2, room_height/2, -1, obj_state_advertising);
					break;
					}
				}
				break;
			}
		
		}

		with (obj_menuItem) {
	
		instance_destroy();

		}
		break;
	}
	case 6: { //IGE - Candidate Names
		with (par) {
		
		text = other.text;
			switch (other.text) {
				case "Create": {
					ncan = new obj_game.candidate(spr_clip, "NewChar" + string(can_num++), ["D", "R", "I"], "Washington", "Male", [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
					array_push(obj_game.candidate_list, ncan);
					list = obj_game.candidate_list;
					text = ncan.name;
					image = ncan.pic;
					with (obj_menu) {
						switch (purpose) {
							case 7:
							text = other.ncan.name;
							list = other.ncan;
							break;
							case 8:
							text = other.ncan.afil;
							list = other.ncan;
							break;
							case 9:
							text = other.ncan.home_state;
							list = other.ncan;
							break;
							case 10:
							text = other.ncan.gender;
							list = other.ncan;
							break;
							case 11:
							text = other.ncan.stats1;
							list = other.ncan;
							break;
							case 12:
							text = other.ncan.stats2;
							list = other.ncan;
							break;
						}
					}
					break;
				}
				default: {
					var _struct = 0;
					for (i = 0; i < array_length(obj_game.candidate_list); i++) {
						if (obj_game.candidate_list[i].name = text) {
							_struct = obj_game.candidate_list[i];
						}
					}
					image = _struct.pic;
					with (obj_menu) {
						switch (purpose) {
							case 7: 
							if (_struct.name == "Create") {
							//	
							} else {
							text = _struct.name;
							list = _struct;
							}
							break;
							case 8: 
							if (_struct.name == "Create") {
							//	
							} else {
							text = _struct.afil;
							list = _struct;
							}
							break;
							case 9: 
							if (_struct.name == "Create") {
							//	
							} else {
							text = _struct.home_state;
							}
							break;
							case 10: 
							if (_struct.name == "Create") {
							//	
							} else {
							text = _struct.gender;
							list = _struct;
							}
							break;
							case 11: 
							if (_struct.name == "Create") {
							//	
							} else {
							text = _struct.stats1;
							list = _struct;
							}
							break;
							case 12: 
							if (_struct.name == "Create") {
							//	
							} else {
							text = _struct.stats2;
							list = _struct;
							}
							break;
						}
					}
				break;
				}
				break;
			}
		
		}

		with (obj_menuItem) {
	
		instance_destroy();

		}
		break;
	}
	case 9: { //IGE - Candidate Home States
		with (par) {
		
		text = other.text;
		
		with (obj_menu) {
			if (purpose == 7) {
				list.home_state = other.text;	
			}
		}
		
		}
		

		with (obj_menuItem) {
	
		instance_destroy();

		}
	}
	case 13: { //State Advertising - States
		with (par) {
		
		text = other.text;
		
		}

		with (obj_menuItem) {
	
		instance_destroy();

		}
		break;
	}
	case 14: { //State Advertising - Cash
		with (par) {
		
		text = other.text;
		
		}

		with (obj_menuItem) {
	
		instance_destroy();

		}
		break;
	}
	case 15: { //Dirty Tricks
		with (par) {
		
		text = other.text;
		
		}

		with (obj_menuItem) {
	
		instance_destroy();

		}
		break;
	}
	case 16: { //Presets
		with (par) {
		
		text = other.text;
		
			for (i = 0; i < array_length(obj_game.presets); i++) {
				if (text == obj_game.presets[i].preset_name) {
					obj_game.preset = obj_game.presets[i];	
				}
			}
		}

		with (obj_menuItem) {
	
		instance_destroy();

		}
		break;
	}
	case 17: { //Game Difficulty
		with (par) {
		
		text = other.text;
		
		switch (text) {
			case "Hard":
			obj_game.game_difficulty = 1.25;
			break;
			case "Normal":
			obj_game.game_difficulty = 1;
			break;
			case "Easy":
			obj_game.game_difficulty = 0.75;
			break;
			}
		}

		with (obj_menuItem) {
	
		instance_destroy();

		}
		break;
	}
}