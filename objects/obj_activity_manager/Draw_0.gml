/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_set_colour(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(centerX, centerY - centerY/26 - (centerY/3 * image_yscale), title);

draw_text_ext(centerX + 8, centerY - centerY/4, obj_game.turn_order[obj_game.player_turns].states[obj_game.rounds].name, 25, sprite_width);

draw_text(centerX - sprite_width/4, centerY - margin - 8, "Activity");
/*draw_text(centerX + centerX/3 + centerX/21, centerY - margin - 8, "Issues");*/

draw_text(centerX + centerX/5, centerY, "Expenditure: " + string(expenditure));