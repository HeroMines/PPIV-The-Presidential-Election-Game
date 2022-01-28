/// @description In-game editor
// You can write your code in this editor

centerX = x - sprite_get_xoffset(sprite_index) + sprite_width / 2;
centerY = y - sprite_get_yoffset(sprite_index) + sprite_height / 2;

margin = 76;

//The First Four
instance_1 = instance_create_depth(centerX, centerY, depth - 1, obj_menu);
instance_1.x = centerX - 6 - instance_1.sprite_width/2;
instance_1.y = centerY - centerY/1.3 - instance_1.sprite_height/2;
instance_1.purpose = 6;
instance_1.list = obj_game.candidate_list;
instance_1.text = obj_game.candidate_list[0].name;
instance_1.upper_pos = 2;
//
instance_2 = instance_create_depth(centerX, centerY + margin, depth - 1, obj_menu);
instance_2.x = centerX - 6 - instance_1.sprite_width/2;
instance_2.y = centerY - centerY/1.3 - instance_1.sprite_height/2 + margin;
instance_2.image_index = 1;
instance_2.purpose = 7;
instance_2.list = obj_game.dem_list[0];
instance_2.text = string(obj_game.dem_list[0].name);
instance_2.upper_pos = 2;
//
instance_3 = instance_create_depth(centerX, centerY + (margin * 2), depth - 1, obj_menu);
instance_3.x = centerX - 6 - instance_1.sprite_width/2;
instance_3.y = centerY - centerY/1.3 - instance_1.sprite_height/2 + (margin * 2);
instance_3.image_index = 1;
instance_3.purpose = 8;
instance_3.list = obj_game.dem_list[0];
instance_3.text = string(obj_game.dem_list[0].afil);
instance_3.upper_pos = 2;
//
instance_4 = instance_create_depth(centerX, centerY + (margin * 3), depth - 1, obj_menu);
instance_4.x = centerX - 6 - instance_1.sprite_width/2;
instance_4.y = centerY - centerY/1.3 - instance_1.sprite_height/2 + (margin * 3);
instance_4.purpose = 9;
instance_4.list = obj_game.states_name_list;
instance_4.text = string(obj_game.dem_list[0].home_state);
instance_4.upper_pos = 2;
//
instance_5 = instance_create_depth(centerX, centerY + (margin * 4), depth - 1, obj_menu);
instance_5.x = centerX - 6 - instance_1.sprite_width/2;
instance_5.y = centerY - centerY/1.3 - instance_1.sprite_height/2 + (margin * 4);
instance_5.image_index = 1;
instance_5.purpose = 10;
instance_5.list = obj_game.dem_list[0];
instance_5.text = string(obj_game.dem_list[0].gender);
instance_5.upper_pos = 2;
//
instance_6 = instance_create_depth(centerX, centerY + (margin * 5), depth - 1, obj_menu);
instance_6.x = centerX - 6 - instance_1.sprite_width/2;
instance_6.y = centerY - centerY/1.3 - instance_1.sprite_height/2 + (margin * 5);
instance_6.image_index = 1;
instance_6.purpose = 11;
instance_6.list = obj_game.dem_list[0];
instance_6.text = string(obj_game.dem_list[0].stats1);
instance_6.upper_pos = 2;
//
instance_7 = instance_create_depth(centerX, centerY + (margin * 6), depth - 1, obj_menu);
instance_7.x = centerX - 6 - instance_1.sprite_width/2;
instance_7.y = centerY - centerY/1.3 - instance_1.sprite_height/2 + (margin * 6);
instance_7.image_index = 1;
instance_7.purpose = 12;
instance_7.list = obj_game.dem_list[0];
instance_7.text = string(obj_game.dem_list[0].stats2);
instance_7.upper_pos = 2;