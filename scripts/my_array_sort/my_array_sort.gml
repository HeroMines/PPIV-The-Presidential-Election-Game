// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function my_array_sort(array, ascend) {
var list = ds_list_create();
var count = array_length(array);

for (var i = 0; i < count; i++) list[| i] = array[i];
ds_list_sort(list, ascend);
for (i = 0; i < count; i++) array[i] = list[| i];
ds_list_destroy(list);
return array;
}

function max_array(array, get_value) {
	maxValue = 0;
	
	if (!get_value) {
		for (i = 0; i < array_length(array); i++) {
			if (array[i] > array[maxValue]) {
				maxValue = i;
			}
		}
		return maxValue;
	} else if (get_value) {
		for (i = 0; i < array_length(array); i++) {
			if (array[i] > array[maxValue]) {
				maxValue = i;
			}
		}
		return array[maxValue];
	}
}

function string_thousands(integer) {
	var i;
	for (i = string_length(integer) - 2; i > 1; i -= 3) {
	    integer = string_insert(",", integer, i)
	}
	return integer
}

function string_split(string, delimiter) {
	var s = argument[0], d = argument[1];
	var rl = ds_list_create();
	var p = string_pos(d, s), o = 1;
	var dl = string_length(d);
	ds_list_clear(rl);
	if (dl) while (p) {
	    ds_list_add(rl, string_copy(s, o, p - o));
	    o = p + dl;
	    p = string_pos_ext(d, s, o);
	}
	ds_list_add(rl, string_delete(s, 1, o - 1));
	// create an array and store results:
	var rn = ds_list_size(rl);
	var rw = array_create(rn);
	for (p = 0; p < rn; p++) rw[p] = rl[|p];
	ds_list_destroy(rl);
	return rw;	
}