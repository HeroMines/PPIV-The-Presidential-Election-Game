/// @description Insert description here
// You can write your code in this editor

if (position_meeting(mouse_x, mouse_y, id))
{
    if (instance_exists(obj_main_menu_button))
    {
        show_list = false;
        with (obj_main_menu_button)
        {
            instance_destroy();
        }
    }
    else
    {
        show_list = true;
        var yIncrement = bbox_bottom;
        var yy = centerY + yIncrement-2;
        for (var i = lower_pos; i < upper_pos; i++)
        {
            var item = instance_create_layer(centerX, yy, "Instances", obj_main_menu_button);
			item.par = id;
            item.text = list[i];
            yy += yIncrement-2;
        }
    }
}
else
{
    if (!position_meeting(mouse_x, mouse_y, obj_main_menu_button))
    {
        if (instance_exists(obj_main_menu_button))
        {
            show_list = false;
            with (obj_main_menu_button)
            {
                instance_destroy();
            }
        }
    }
}