/// @description Insert description here
// You can write your code in this editor

switch (purpose) {
	case 0: { // Two Options
		//Title Box
		draw_set_color(merge_color(c_ltgray, make_color_rgb(242, 165, 183), lerp(0, (point_in_rectangle(mouse_x, mouse_y, x, y, x + width, y + height)), 0.1)));
		draw_roundrect(x, y, x + width, y + height, 0);

		draw_set_color(c_black);
		draw_roundrect(x, y, x + width, y + height, 1);
		draw_roundrect(x, y + 20, x + width, y + height, 1);
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
		draw_text(x + width/2, y, title);
		
		//Description
		draw_text_ext(x + width/2, y + height/4, desc, -1, width - 6);

		//Option Box 1
		draw_set_color(merge_color(c_white, c_blue, lerp(0, (point_in_rectangle(mouse_x, mouse_y, x + 6, y + height/2, x + width/2, y + height - 6)), 0.1)));
		draw_roundrect(x + 6, y + height/2, x + width/2, y + height - 6, 0);
		draw_set_color(c_black);
		draw_roundrect(x + 6, y + height/2, x + width/2, y + height - 6, 1);
		draw_text(x + width/4, y + height/1.5, options[0]);
		
		//Option Box 2
		draw_set_color(merge_color(c_white, c_red, lerp(0, (point_in_rectangle(mouse_x, mouse_y, x + width/2 + 6, y + height/2, x + width - 6, y + height - 6)), 0.1)));
		draw_roundrect(x + width/2 + 6, y + height/2, x + width - 6, y + height - 6, 0);
		draw_set_color(c_black);
		draw_roundrect(x + width/2 + 6, y + height/2, x + width - 6, y + height - 6, 1);
		draw_text(x + width/2 + width/4, y + height/1.5, options[1]);
		
		if (mouse_check_button_pressed(mb_left)) {
			if point_in_rectangle(mouse_x, mouse_y, x, y, x + width, y + height) {
				switch (text_purpose) {
					case 0: { //Scheduler Box Options
						if ((draw_getpixel(mouse_x, mouse_y) == 16770790)) {
							obj_game.hide_objects = true;	
							with (obj_scheduler_box) {
							obj_game.turn_order[obj_game.player_turns].states[assigned_state_number] = selected_state;
							}
							obj_game.alarm[0] = room_speed * 0.1;
							instance_destroy();
						} else if ((draw_getpixel(mouse_x, mouse_y) == 15132415)) {
							global.scheduler_box_counter = 0;
							instance_destroy();
						}
						break;
					}
				}
			}
		}
		break;
	}
	case 1: { // One Option
		//Title Box
		draw_set_color(merge_color(c_ltgray, make_color_rgb(242, 165, 183), lerp(0, (point_in_rectangle(mouse_x, mouse_y, x, y, x + width, y + height)), 0.1)));
		draw_roundrect(x, y, x + width, y + height, 0);

		draw_set_color(c_black);
		draw_roundrect(x, y, x + width, y + height, 1);
		draw_roundrect(x, y + 20, x + width, y + height, 1);
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
		draw_text(x + width/2, y, title);
		
		//Description
		draw_text_ext(x + width/2, y + height/4, desc, -1, width - 6);

		//Option Box
		draw_set_color(merge_color(c_white, c_blue, lerp(0, (point_in_rectangle(mouse_x, mouse_y, x + width/4, y + height/2, x + width/2 + width/4, y + height - 6)), 0.1)));
		draw_roundrect(x + width/4, y + height/2, x + width/2 + width/4, y + height - 6, 0);
		draw_set_color(c_black);
		draw_roundrect(x + width/4, y + height/2, x + width/2 + width/4, y + height - 6, 1);
		draw_text(x + width/2, y + height/1.5, options[0]);
		
		if (mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_enter)) {
			if point_in_rectangle(mouse_x, mouse_y, x, y, x + width, y + height) {
				switch (text_purpose) {
					case 0: {
						if ((draw_getpixel(mouse_x, mouse_y) == 16770790)) {
							if (obj_game.turn_order[obj_game.player_turns].state == "Human") && (array_equals(obj_game.turn_order[obj_game.player_turns].states, [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania])) {
								obj_game.hide_objects = false;
								instance_destroy();
							} else if (obj_game.turn_order[obj_game.player_turns].state == "Computer") {
								obj_game.turn_order[obj_game.player_turns].campaign_activity = [choose("Campaign", "Rest", "Fund Raising", "Press Conference"), choose("Campaign", "Rest", "Fund Raising", "Press Conference"), choose("Campaign", "Rest", "Fund Raising", "Press Conference"), choose("Campaign", "Rest", "Fund Raising", "Press Conference")];
								
								if (irandom(100) >= 60) {
									repeat (5) {
										if (obj_game.turn_order[obj_game.player_turns].income >= 500000) {
											obj_game.turn_order[obj_game.player_turns].income -= 500000;
											obj_game.turn_order[obj_game.player_turns].states[obj_game.rounds].cand_score[obj_game.player_turns] += 0.20 * obj_game.game_difficulty;
										} else if (obj_game.turn_order[obj_game.player_turns].income >= 400000) {
											obj_game.turn_order[obj_game.player_turns].income -= 400000;
											obj_game.turn_order[obj_game.player_turns].states[obj_game.rounds].cand_score[obj_game.player_turns] += 0.14 * obj_game.game_difficulty;
										} else if (obj_game.turn_order[obj_game.player_turns].income >= 300000) {
											obj_game.turn_order[obj_game.player_turns].income -= 300000;
											obj_game.turn_order[obj_game.player_turns].states[obj_game.rounds].cand_score[obj_game.player_turns] += 0.10 * obj_game.game_difficulty;
										} else if (obj_game.turn_order[obj_game.player_turns].income >= 250000) {
											obj_game.turn_order[obj_game.player_turns].income -= 250000;
											obj_game.turn_order[obj_game.player_turns].states[obj_game.rounds].cand_score[obj_game.player_turns] += 0.05 * obj_game.game_difficulty;
										} else if (obj_game.turn_order[obj_game.player_turns].income >= 200000) {
											obj_game.turn_order[obj_game.player_turns].income -= 200000;
											obj_game.turn_order[obj_game.player_turns].states[obj_game.rounds].cand_score[obj_game.player_turns] += 0.04 * obj_game.game_difficulty;
										} else if (obj_game.turn_order[obj_game.player_turns].income >= 150000) {
											obj_game.turn_order[obj_game.player_turns].income -= 150000;
											obj_game.turn_order[obj_game.player_turns].states[obj_game.rounds].cand_score[obj_game.player_turns] += 0.03 * obj_game.game_difficulty;
										} else if (obj_game.turn_order[obj_game.player_turns].income >= 100000) {
											obj_game.turn_order[obj_game.player_turns].income -= 100000;
											obj_game.turn_order[obj_game.player_turns].states[obj_game.rounds].cand_score[obj_game.player_turns] += 0.02 * obj_game.game_difficulty;
										}
									}
								}
								
								var count = 0;
							    for (i = 0; i < array_length(obj_game.turn_order[obj_game.player_turns].campaign_activity); i++) {
							        if (obj_game.turn_order[obj_game.player_turns].campaign_activity[i] == "Press Conference") /*|| (obj_game.turn_order[obj_game.player_turns].campaign_activity[i] == "Fund Raising")*/ {
							            count += 1;
							        }
                        
							        if (count >= 2) {
									obj_game.turn_order[obj_game.player_turns].campaign_activity[0] = "Campaign";
				                    obj_game.turn_order[obj_game.player_turns].campaign_activity[1] = "Press Conference";
				                    obj_game.turn_order[obj_game.player_turns].campaign_activity[2] = "Fund Raising";
				                    obj_game.turn_order[obj_game.player_turns].campaign_activity[3] = "Rest";
									break;
							        }
							    }
		
								var count = 0;
							    for (i = 0; i < array_length(obj_game.turn_order[obj_game.player_turns].campaign_activity); i++) {
							        if (obj_game.turn_order[obj_game.player_turns].campaign_activity[i] == "Fund Raising") {
							            count += 1;
							        }
                        
							        if (count >= 2) {
									obj_game.turn_order[obj_game.player_turns].campaign_activity[0] = "Campaign";
				                    obj_game.turn_order[obj_game.player_turns].campaign_activity[1] = "Press Conference";
				                    obj_game.turn_order[obj_game.player_turns].campaign_activity[2] = "Fund Raising";
				                    obj_game.turn_order[obj_game.player_turns].campaign_activity[3] = "Rest";
									break;
							        }
							    }
								
					            var expenditure, rest_counter;
            
					            expenditure = 0;
								rest_counter = 0;
					            for (i = 0; i < array_length(obj_game.turn_order[obj_game.player_turns].campaign_activity); i++) {
					                switch(obj_game.turn_order[obj_game.player_turns].campaign_activity[i]) {
					                    case "Campaign":
					                    expenditure += 0.50;
					                    break;
					                    case "Press Conference":
					                    expenditure += 1;
					                    break;
					                    case "Rest":
										rest_counter += 1.25;
					                    break;
					                    case "Fund Raising":
					                    expenditure += 0.25;
					                    break;
					                }
					            }
			
								if ((obj_game.stamina[obj_game.player_turns] + rest_counter) - expenditure < 0) {
									obj_game.turn_order[obj_game.player_turns].campaign_activity[0] = "Rest";
				                    obj_game.turn_order[obj_game.player_turns].campaign_activity[1] = "Rest";
				                    obj_game.turn_order[obj_game.player_turns].campaign_activity[2] = "Rest";
				                    obj_game.turn_order[obj_game.player_turns].campaign_activity[3] = "Rest";
								}
								
								if ((obj_game.stamina[obj_game.player_turns] + rest_counter) - expenditure >= 0) {
						            for (i = 0; i < array_length(obj_game.turn_order[obj_game.player_turns].campaign_activity); i++) {
						                switch (obj_game.turn_order[obj_game.player_turns].campaign_activity[i]) {
								            case "Campaign":
								            obj_game.turn_order[obj_game.player_turns].states[obj_game.rounds].cand_score[obj_game.player_turns] += (0.75 + (obj_game.turn_order[obj_game.player_turns].stats1[5] * 0.08)) * obj_game.game_difficulty;
											obj_game.stamina[obj_game.player_turns] -= 0.50;
								            break;
								            case "Press Conference":
											with (par_states) {
												cand_score[obj_game.player_turns] += (0.50 + (obj_game.turn_order[obj_game.player_turns].stats1[5] * 0.08)) * obj_game.game_difficulty;
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
								}
								obj_game.alarm[0] = room_speed * obj_game.computer_delay;
								instance_destroy();
							} else if (obj_game.turn_order[obj_game.player_turns].state == "Human") {
								if (!instance_exists(obj_activity_manager)) {
								instance_create_depth(room_width/2, room_height/2, -1, obj_activity_manager);
								}
								instance_destroy();
							}
						}
						break;
					}
					case 1: {
					instance_destroy();
					break;
					}
				}
			}
		}
		break;
	}
	case 2: { // Three Options
		
	}
}