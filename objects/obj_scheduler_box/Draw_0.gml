/// @description Insert description here
// You can write your code in this editor

if (obj_game.hide_objects) exit;

draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (!selected) {
draw_set_color(c_black);
draw_text(centerX, centerY - 10, text);
} else if (selected) {
draw_set_color(c_red);
draw_text(centerX, centerY - 10, text);
}

if (instance_exists(selected_state)) {
    draw_set_color(c_black);
    draw_text(centerX, centerY + 10, string(selected_state.name));
}