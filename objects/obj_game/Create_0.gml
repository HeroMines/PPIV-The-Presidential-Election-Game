/// @description Initialize Variables
// You can write your code in this editor

function candidate(_pic, _name, _afil, _home_state, _gender, _stats1, _stats2, _income, _state, _states, _campaign_activity, _scheduling_complete) constructor {
	pic = _pic; //6
	name = _name; //6, 7 - List
	afil = _afil; //8
	home_state = _home_state; //9 - List
	gender = _gender; //10
	stats1 = _stats1; //11
	stats2 = _stats2; //12
	income = _income;
	state = _state;
	states = _states;
	campaign_activity = _campaign_activity;
	scheduling_complete = _scheduling_complete;
}

function thirteen_keys(_preset_name, _incumb_party, _incumb_midterm_gains, _no_incumb_primary_contest, _incumb_seeking_reelection, _no_third_party, _strong_short_term, _strong_long_term, _major_policy_change, _no_social_unrest, _no_scandal, _no_foreign_failure, _major_foreign_success, _charismatic_incumbent, _uncharismatic_challenger) constructor {
	preset_name = _preset_name;
	incumb_party = _incumb_party;
	incumb_midterm_gains = _incumb_midterm_gains;
	no_incumb_primary_contest = _no_incumb_primary_contest;
	incumb_seeking_reelection = _incumb_seeking_reelection;
	no_third_party = _no_third_party;
	strong_short_term = _strong_short_term;
	strong_long_term = _strong_long_term;
	major_policy_change = _major_policy_change;
	no_social_unrest = _no_social_unrest;
	no_scandal = _no_scandal;
	no_foreign_failure = _no_foreign_failure;
	major_foreign_success = _major_foreign_success;
	charismatic_incumbent = _charismatic_incumbent;
	uncharismatic_challenger = _uncharismatic_challenger;
}

/*thirteen keys preset
	preset_name
	incumb_party
	incumb_midterm_gains
	no_incumb_primary_contest
	incumb_seeking_reelection
	no_third_party
	strong_short_term
	strong_long_term
	major_policy_change
	no_social_unrest
	no_scandal
	no_foreign_failure
	major_foreign_success
	charismatic_incumbent
	uncharismatic_challenger*/
preset_2024 = new thirteen_keys("2024", "D", false, true, true, true, false, false, false, true, true, false, false, false, true);
preset_2020 = new thirteen_keys("2020", "R", false, true, true, true, false, false, true, false, false, true, false, false, true);
preset_2016 = new thirteen_keys("2016", "D", false, false, false, false, true, true, false, true, true, true, false, false, true);
preset_2012 = new thirteen_keys("2012", "D", false, true, true, true, true, false, true, true, true, true, true, false, true);
preset_2008 = new thirteen_keys("2008", "R", false, true, false, true, false, false, false, true, true, false, false, false, false);
preset_2004 = new thirteen_keys("2004", "R", true, true, true, true, true, false, false, true, true, false, true, false, true);
preset_2000 = new thirteen_keys("2000", "D", true, true, false, true, true, true, false, true, false, true, false, false, true);
preset = preset_2024;
thirteen_keys_counter = 0;
presets = [];
array_push(presets, preset_2024, preset_2020, preset_2016, preset_2012, preset_2008, preset_2004, preset_2000);

state_choices = ["Computer", "Human"]

if (!file_exists("candidate_list.json")) {
candidate_joe_biden = new candidate(spr_joe_biden, "Joe Biden", ["D"], "Delaware", "Male", [3, 4, 2, 2, 3, 2, 2, 2, 3, 2], [3, 3, 3, 4, 1, 3, 3, 2, 3, 3, 4, 3, 3], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false)
candidate_kamala_harris = new candidate(spr_kamala_harris, "Kamala Harris", ["D"], "California", "Female", [3, 3, 2, 3, 3, 3, 1, 3, 3, 2], [3, 4, 3, 3, 2, 3, 3, 3, 3, 3, 4, 3, 3], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_bernie_sanders = new candidate(spr_bernie_sanders, "Bernie Sanders", ["D"], "Vermont", "Male", [3, 3, 2, 4, 2, 2, 4, 3, 1, 4], [4, 4, 4, 4, 4, 3, 3, 4, 4, 4, 4, 4, 4], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_elizabeth_warren = new candidate(spr_elizabeth_warren, "Elizabeth Warren", ["D"], "Massachusetts", "Female", [4, 3, 2, 3, 3, 2, 1, 3, 3, 3], [3, 3, 3, 4, 3, 3, 3, 3, 3, 3, 4, 4, 4], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_pete_buttigieg = new candidate(spr_pete_buttigieg, "Pete Buttigieg", ["D"], "Indiana", "Male", [3, 2, 4, 3, 3, 3, 2, 3, 3, 3], [3, 3, 3, 3, 2, 3, 3, 3, 3, 3, 3, 3, 3], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_amy_klobuchar = new candidate(spr_amy_klobuchar, "Amy Klobuchar", ["D"], "Minnesota", "Female", [3, 3, 2, 2, 4, 3, 2, 3, 3, 2], [3, 3, 3, 2, 2, 3, 3, 2, 3, 3, 3, 3, 3], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_andrew_yang = new candidate(spr_andrew_yang, "Andrew Yang", ["D", "I"], "New York", "Male", [3, 1, 2, 3, 2, 3, 3, 2, 2, 3], [3, 3, 2, 2, 3, 3, 3, 1, 3, 3, 2, 3, 3], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_tulsi_gabbard = new candidate(spr_tulsi_gabbard, "Tulsi Gabbard", ["D"], "Hawaii", "Female", [3, 2, 3, 1, 3, 3, 3, 2, 0, 2], [3, 3, 3, 4, 4, 3, 3, 3, 4, 3, 4, 3, 3], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_hillary_clinton = new candidate(spr_hillary_clinton, "Hillary Clinton", ["D"], "New York", "Female", [2, 3, 2, 3, 3, 2, 1, 1, 2, 3], [3, 3, 3, 3, 3, 3, 3, 1, 3, 2, 3, 3, 3], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_barack_obama = new candidate(spr_barack_obama, "Barack Obama", ["D"], "Illinois", "Male", [4, 4, 3, 2, 2, 3, 2, 3, 3, 2], [3, 3, 3, 3, 2, 3, 3, 3, 3, 2, 3, 3, 3], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_john_kerry = new candidate(spr_john_kerry, "John Kerry", ["D"], "Massachusetts", "Male", [3, 3, 2, 2, 3, 2, 3, 2, 2, 3], [3, 2, 3, 3, 3, 3, 3, 2, 2, 2, 3, 3, 3], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_al_gore = new candidate(spr_al_gore, "Al Gore", ["D"], "Tennessee", "Male", [3, 3, 2, 2, 3, 2, 2, 3, 3, 3], [2, 3, 3, 3, 1, 2, 3, 3, 3, 1, 3, 3, 3], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_howard_dean = new candidate(spr_howard_dean, "Howard Dean", ["D"], "Vermont", "Male", [3, 3, 2, 3, 2, 3, 3, 2, 1, 4], [3, 3, 3, 3, 2, 3, 3, 3, 3, 3, 4, 3, 3], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_mike_bloomberg = new candidate(spr_mike_bloomberg, "Mike Bloomberg", ["D", "I"], "New York", "Male", [3, 2, 1, 0, 0, 2, 2, 1, 2, 3], [3, 3, 2, 2, 2, 3, 3, 3, 2, 3, 3, 3, 2], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_stacey_abrams = new candidate(spr_stacey_abrams, "Stacey Abrams", ["D"], "Georgia", "Female", [3, 2, 2, 2, 2, 3, 2, 3, 3, 2], [3, 3, 3, 3, 2, 3, 2, 2, 2, 3, 3, 3, 3], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_cory_booker = new candidate(spr_cory_booker, "Cory Booker", ["D"], "New Jersey", "Male", [2, 3, 3, 2, 2, 3, 2, 3, 2, 2], [4, 3, 2, 3, 3, 3, 4, 1, 1, 3, 4, 3, 3], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_aoc = new candidate(spr_aoc, "AOC", ["D"], "New York", "Female", [2, 2, 3, 3, 2, 4, 3, 3, 2, 3], [4, 4, 4, 4, 4, 4, 4, 2, 3, 4, 4, 4, 4], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_beto_orourke = new candidate(spr_beto_orourke, "Beto O'Rourke", ["D"], "Texas", "Male", [2, 2, 2, 2, 2, 3, 2, 3, 2, 2], [3, 4, 2, 3, 4, 3, 3, 3, 1, 3, 3, 3, 3], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_donald_trump = new candidate(spr_donald_trump, "Donald Trump", ["R"], "New York", "Male", [3, 3, 3, 3, 0, 3, 1, 1, 0, 3], [1, 1, 1, 1, 2, 1, 1, 1, 0, 1, 2, 1, 1], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_ron_desantis = new candidate(spr_ron_desantis, "Ron DeSantis", ["R"], "Florida", "Male", [2, 3, 2, 2, 2, 3, 2, 3, 3, 2], [0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_mike_pence = new candidate(spr_mike_pence, "Mike Pence", ["R"], "Indiana", "Male", [2, 3, 1, 2, 3, 2, 3, 2, 2, 3], [1, 1, 1, 1, 2, 0, 1, 1, 1, 1, 0, 1, 1], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_ted_cruz = new candidate(spr_ted_cruz, "Ted Cruz", ["R"], "Texas", "Male", [3, 3, 2, 3, 2, 2, 3, 3, 2, 3], [1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_rand_paul = new candidate(spr_rand_paul, "Rand Paul", ["R"], "Kentucky", "Male", [2, 3, 2, 2, 2, 2, 3, 2, 1, 3], [1, 0, 1, 0, 1, 1, 1, 1, 2, 1, 1, 1, 2], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_john_kasich = new candidate(spr_john_kasich, "John Kasich", ["R"], "Ohio", "Male", [3, 3, 1, 3, 3, 2, 3, 3, 2, 3], [3, 2, 2, 1, 1, 2, 1, 1, 2, 1, 2, 2, 1], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_jeb_bush = new candidate(spr_jeb_bush, "Jeb Bush", ["R"], "Florida", "Male", [2, 3, 1, 2, 2, 2, 3, 2, 2, 3], [1, 1, 1, 2, 1, 2, 1, 1, 1, 0, 1, 1, 1], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_mitt_romney = new candidate(spr_mitt_romney, "Mitt Romney", ["R"], "Utah", "Male", [3, 3, 2, 2, 2, 2, 1, 3, 3, 3], [2, 2, 1, 1, 1, 1, 2, 1, 1, 1, 2, 1, 1], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_ron_paul = new candidate(spr_ron_paul, "Ron Paul", ["R"], "Texas", "Male", [3, 2, 2, 4, 2, 2, 4, 3, 2, 3], [2, 1, 0, 1, 1, 0, 1, 1, 3, 3, 0, 1, 2], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_john_mccain = new candidate(spr_john_mccain, "John McCain", ["R"], "Arizona", "Male", [3, 3, 1, 3, 2, 1, 4, 3, 2, 3], [2, 3, 1, 1, 1, 2, 2, 0, 1, 1, 2, 2, 1], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_george_bush = new candidate(spr_george_bush, "George Bush", ["R"], "Texas", "Male", [2, 4, 3, 2, 3, 2, 2, 1, 2, 2], [1, 2, 2, 2, 1, 1, 2, 1, 1, 0, 1, 2, 1], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_chris_sununu = new candidate(spr_chris_sununu, "Chris Sununu", ["R"], "New Hampshire", "Male", [2, 3, 2, 2, 2, 3, 3, 3, 3, 2], [3, 1, 2, 2, 2, 1, 2, 2, 1, 1, 2, 2, 2], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_nikki_haley = new candidate(spr_nikki_haley, "Nikki Haley", ["R"], "South Carolina", "Female", [2, 3, 3, 2, 2, 3, 1, 2, 2, 2], [1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_tim_scott = new candidate(spr_tim_scott, "Tim Scott", ["R"], "South Carolina", "Male", [2, 3, 2, 2, 2, 3, 3, 2, 2, 2], [1, 1, 1, 1, 2, 0, 1, 1, 1, 1, 1, 1, 0], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_liz_cheney = new candidate(spr_liz_cheney, "Liz Cheney", ["R"], "Wyoming", "Female", [2, 3, 2, 2, 2, 2, 3, 3, 2, 2], [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_howie_hawkins = new candidate(spr_howie_hawkins, "Howie Hawkins", ["I"], "New York", "Male", [3, 1, 2, 2, 2, 2, 3, 3, 2, 2], [4, 3, 4, 4, 3, 3, 3, 3, 4, 3, 4, 4, 3], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_jo_jorgensen = new candidate(spr_jo_jorgensen, "Jo Jorgensen", ["I"], "South Carolina", "Female", [2, 0, 1, 2, 2, 3, 3, 2, 1, 2], [1, 1, 1, 2, 2, 1, 2, 3, 1, 1, 1, 2, 2], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_gary_johnson = new candidate(spr_gary_johnson, "Gary Johnson", ["R", "I"], "New Mexico", "Male", [2, 3, 1, 3, 2, 2, 3, 2, 2, 3], [3, 1, 1, 1, 2, 2, 1, 1, 2, 3, 0, 1, 1], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_jill_stein = new candidate(spr_jill_stein, "Jill Stein", ["I"], "Massachusetts", "Female", [3, 0, 1, 3, 2, 2, 3, 3, 2, 3], [4, 3, 3, 4, 3, 4, 3, 3, 3, 3, 4, 4, 3], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_ralph_nader = new candidate(spr_ralph_nader, "Ralph Nader", ["I"], "Connecticut", "Male", [3, 1, 2, 3, 2, 2, 4, 3, 2, 3], [3, 3, 4, 3, 3, 2, 2, 3, 3, 3, 4, 3, 3], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_pat_buchanan = new candidate(spr_pat_buchanan, "Pat Buchanan", ["R", "I"], "Virginia", "Male", [3, 1, 2, 2, 3, 2, 3, 2, 1, 3], [0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_kanye_west = new candidate(spr_kanye_west, "Kanye West", ["I"], "Illinois", "Male", [3, 0, 2, 2, 1, 4, 2, 2, 1, 3], [3, 1, 3, 3, 3, 1, 1, 2, 3, 3, 2, 3, 3], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_justin_amash = new candidate(spr_justin_amash, "Justin Amash", ["I"], "Michigan", "Male", [3, 2, 2, 1, 2, 2, 3, 2, 3, 3], [3, 1, 2, 1, 3, 1, 3, 3, 3, 3, 1, 1, 1], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_gloria_la_riva = new candidate(spr_gloria_la_riva, "Gloria La Riva", ["I"], "California", "Female", [2, 0, 2, 3, 2, 2, 3, 3, 2, 3], [4, 1, 3, 4, 4, 4, 4, 3, 4, 3, 4, 4, 4], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_bill_weld = new candidate(spr_bill_weld, "Bill Weld", ["R", "I"], "Massachusetts", "Male", [3, 3, 2, 2, 2, 2, 3, 2, 3, 3], [3, 1, 2, 1, 2, 3, 2, 2, 2, 1, 2, 2, 1], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_mr_nota = new candidate(spr_clip, "Mr. NOTA", ["D", "R", "I"], "Washington", "Male", [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5], 1000, "Computer", [obj_florida, obj_georgia, obj_texas, obj_california, obj_wisconsin, obj_michigan, obj_pennsylvania], ["", "", "", ""], false);
candidate_create = new candidate(spr_clip, "Create", [""], "Washington", "Male", [], [], "Computer", [], [], [], false);
candidate_list = [];
array_push(candidate_list, candidate_joe_biden, candidate_kamala_harris, candidate_bernie_sanders, candidate_elizabeth_warren, candidate_pete_buttigieg,
candidate_amy_klobuchar, candidate_andrew_yang, candidate_tulsi_gabbard, candidate_hillary_clinton, candidate_barack_obama, candidate_john_kerry,
candidate_al_gore, candidate_howard_dean, candidate_mike_bloomberg, candidate_stacey_abrams, candidate_cory_booker, candidate_aoc,
candidate_beto_orourke, candidate_donald_trump, candidate_ron_desantis, candidate_mike_pence, candidate_ted_cruz, candidate_rand_paul,
candidate_john_kasich, candidate_jeb_bush, candidate_mitt_romney, candidate_ron_paul, candidate_john_mccain, candidate_george_bush,
candidate_chris_sununu, candidate_nikki_haley, candidate_tim_scott, candidate_liz_cheney, candidate_howie_hawkins, candidate_jo_jorgensen,
candidate_gary_johnson, candidate_jill_stein, candidate_ralph_nader, candidate_pat_buchanan, candidate_kanye_west, candidate_justin_amash,
candidate_gloria_la_riva, candidate_bill_weld, candidate_mr_nota, candidate_create);

} else if (file_exists("candidate_list.json")) {
		var _buffer = buffer_load("candidate_list.json");
		var _string = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
				
		var _loadData = json_parse(_string);
		
			while (array_length(_loadData) > 0) {
			var _loadEntity = array_pop(_loadData);	
			
			with (asset_get_index(_loadEntity.obj)) {
					candidate_list = _loadEntity.candidate_list;
			}	
	}
}

dem_list = [];
rep_list = [];
ind_list = [];

for (i = 0; i < array_length(candidate_list); i++) {
	for (j = 0; j < array_length(candidate_list[i].afil); j++) {
		if (candidate_list[i].afil[j] == "D") {
			array_push(dem_list, candidate_list[i]);
		}
		if (candidate_list[i].afil[j] == "R") {
			array_push(rep_list, candidate_list[i]);
		}
		if (candidate_list[i].afil[j] == "I") {
			array_push(ind_list, candidate_list[i]);
		}
	} 
}

is_incumbent = true;
incumbent = dem_list[0];

incumbent_advantage = 0.2;
computer_delay = 0.7;
campaign_length = 8;
debate_frequency = 3;

dem_candidate = dem_list[0];
rep_candidate = rep_list[0];
ind_candidate = ind_list[0];

hide_objects = false;

game_turns = 1; //Weeks
rounds = 0; //Days
player_turns = 0; //Sessions

turn_order = [dem_candidate, rep_candidate, ind_candidate];

stamina = [2.5 * dem_candidate.stats1[5], 2.5 * rep_candidate.stats1[5], 2.5 * ind_candidate.stats1[5]];
global.average_percent = 0;

states_vote_margins = [];
states_vote_margins_id = [];

states_electoral_votes = [0, 0, 0];

election_night_order = [obj_indiana, obj_kentucky, obj_alabama, obj_arizona, obj_florida, obj_georgia, obj_hawaii,
obj_illinois, obj_kansas, obj_mississippi, obj_missouri, obj_nevada, obj_newhampshire, obj_newmexico,
obj_oklahoma, obj_southcarolina, obj_southdakota, obj_texas, obj_vermont, obj_virginia, obj_wyoming,
obj_tennessee, obj_nebraska, obj_arkansas, obj_northcarolina, obj_ohio, obj_westvirginia, obj_alaska,
obj_california, obj_connecticut, obj_delaware, obj_idaho, obj_louisiana, obj_maine, obj_maryland,
obj_massachusetts, obj_michigan, obj_minnesota, obj_montana, obj_newjersey, obj_pennsylvania, obj_rhodeisland,
obj_utah, obj_wisconsin, obj_washington, obj_iowa, obj_newyork, obj_northdakota, obj_colorado, obj_oregon];

states_name_list = [];

for (i = 0; i < array_length(election_night_order); i++) {
	with (instance_create_depth(0, 0, 100, election_night_order[i])) {
		array_push(other.states_name_list, name);
		instance_destroy();
	}
}
		
counter = 0;
random_chance = 0;

house_contigent_election = false;

average_population = [0, 0, 0];
total_population = average_population[0] + average_population[1] + average_population[2]

game_difficulty = 1;

declare_the_winner = "";

global.loaded_game = false;

//candidate_list = 0;