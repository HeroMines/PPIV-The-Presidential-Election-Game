/// @description Activity Manager
// You can write your code in this editor

centerX = x - sprite_get_xoffset(sprite_index) + sprite_width / 2;
centerY = y - sprite_get_yoffset(sprite_index) + sprite_height / 2;

margin = 34;

expenditure = 0;

title = "Today's activities in " + obj_game.turn_order[obj_game.player_turns].states[obj_game.rounds].name;

//The First Four
instance_1 = instance_create_depth(centerX, centerY, depth - 1, obj_menu);
instance_1.sprite_index = spr_activity_menu;
instance_1.x = centerX - 6 - instance_1.sprite_width/2;
instance_1.y = centerY - instance_1.sprite_height/2;
instance_1.purpose = 4;
instance_1.list = ["Campaign", "Rest", "Press Conference", "Fund Raising"];
instance_1.text = "";
instance_1.upper_pos = 4;
instance_2 = instance_create_depth(centerX, centerY + margin, depth - 1, obj_menu);
instance_2.sprite_index = spr_activity_menu;
instance_2.x = centerX - 6 - instance_1.sprite_width/2;
instance_2.y = centerY - instance_1.sprite_height/2 + margin;
instance_2.purpose = 4;
instance_2.list = ["Campaign", "Rest", "Press Conference", "Fund Raising"];
instance_2.text = "";
instance_2.upper_pos = 4;
instance_3 = instance_create_depth(centerX, centerY + (margin * 2), depth - 1, obj_menu);
instance_3.sprite_index = spr_activity_menu;
instance_3.x = centerX - 6 - instance_1.sprite_width/2;
instance_3.y = centerY - instance_1.sprite_height/2 + (margin * 2);
instance_3.purpose = 4;
instance_3.list = ["Campaign", "Rest", "Press Conference", "Fund Raising"];
instance_3.text = "";
instance_3.upper_pos = 4;
instance_4 = instance_create_depth(centerX, centerY + (margin * 3), depth - 1, obj_menu);
instance_4.sprite_index = spr_activity_menu;
instance_4.x = centerX - 6 - instance_1.sprite_width/2;
instance_4.y = centerY - instance_1.sprite_height/2 + (margin * 3);
instance_4.purpose = 4;
instance_4.list = ["Campaign", "Rest", "Press Conference", "Fund Raising"];
instance_4.text = "";
instance_4.upper_pos = 4;

rest_counter = 0;