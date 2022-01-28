// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/*function point(_px, _py) constructor {
	px = _px;
	py = _py;
}*/

function dfs(_img, _x, _y, old_color, new_color) {
	
	if _x < 0 or _x >= w or _y < 0 or _y >= h or buffer_getpixel(img_buff, _x, _y, w, h) != old_color {
		return;
	} else {
		surface_set_target(img_surf);
		draw_point_color(_x, _y, new_color);
		buffer_get_surface(img_buff, img_surf, 0);
		surface_reset_target();
		dfs(image, _x+1, _y, old_color, new_color);
		dfs(image, _x-1, _y, old_color, new_color);
		dfs(image, _x, _y+1, old_color, new_color);
		dfs(image, _x, _y-1, old_color, new_color);
		buffer_get_surface(img_buff, img_surf, 0);
	}
	
}

function flood_fill(_img, _x, _y, new_color) {

image = _img;
w = sprite_get_width(image);
h = sprite_get_height(image);
px = _x;
py = _y;
	
img_surf = surface_create(w, h);
surface_set_target(img_surf);
draw_sprite(image, 0, 0, 0);
surface_reset_target();
img_buff = buffer_getpixel_begin(img_surf);

old_color = buffer_getpixel(img_buff, px, py, w, h);

if old_color == new_color {
	return;
}
dfs(image, px, py, old_color, new_color);
surface_save(img_surf, "test_surf.png");

/*image = _img;
w = sprite_get_width(image);
h = sprite_get_height(image);

img_surf = surface_create(w, h);
surface_set_target(img_surf);
draw_sprite(image, 0, 0, 0);
surface_reset_target();

starting_point = new point(_x, _y)

old_color = surface_getpixel(img_surf, starting_point.px, starting_point.py);
queue = ds_queue_create();
ds_queue_enqueue(queue, starting_point);

	while !ds_queue_empty(img_surf) {
		new_point = new point(ds_queue_head(img_surf).px, ds_queue_head(img_surf).py);
		
		if new_point.px < 0 or new_point.px >= w or new_point.py < 0 or new_point.py >= h or surface_getpixel(img_surf, new_point.px, new_point.py) != old_color {
			//show_debug_message(string(new_point.px) + "," + string(new_point.py));
			ds_queue_dequeue(queue);
			continue;
		} else {
			surface_set_target(img_surf);
			draw_point_color(new_point.px, new_point.py, new_color);
			surface_reset_target();
			ds_queue_dequeue(queue);
			ds_queue_enqueue(queue, new point(new_point.px+1, new_point.py));
			ds_queue_enqueue(queue, new point(new_point.px-1, new_point.py));
			ds_queue_enqueue(queue, new point(new_point.px, new_point.py+1));
			ds_queue_enqueue(queue, new point(new_point.px, new_point.py-1));
		}
	}
	surface_save(img_surf, "test_surf.png");*/
	
}

