// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function create_people(number, array) {

pop_array_d[0][0] = 0;
pop_array_r[0][0] = 0;
pop_array_i[0][0] = 0;

for (i = 0; i < (number*array[0]); i++) { //Democrat
	
	    //Civil Rights
        pop_array_d[i][0] = choose(2, 3, 4);
        
        //Gun Control 
        pop_array_d[i][1] = choose(2, 3, 4);
        
        //Social Security
        pop_array_d[i][2] = choose(2, 3, 4);
        
        //Education
        pop_array_d[i][3] = choose(2, 3, 4);
        
        //Crime
        pop_array_d[i][4] = choose(2, 3, 4);
        
        //Abortion 
        pop_array_d[i][5] = choose(2, 3, 4);
        
        //Unemployment
        pop_array_d[i][6] = choose(2, 3, 4);
        
        //Nuclear Energy
        pop_array_d[i][7] = choose(2, 3, 4);
        
        //Defense Cuts 
        pop_array_d[i][8] = choose(2, 3, 4);
        
        //Death Penalty 
        pop_array_d[i][9] = choose(2, 3, 4);
        
        //Health Care
        pop_array_d[i][10] = choose(2, 3, 4);
        
        //Environment
        pop_array_d[i][11] = choose(2, 3, 4);
        
        //Taxes
        pop_array_d[i][12] = choose(2, 3, 4);
	}
	
for (i = 0; i < (number*array[1]); i++) { //Republican
	
	    //Civil Rights
        pop_array_r[i][0] = choose(0, 1, 2);
        
        //Gun Control 
        pop_array_r[i][1] = choose(0, 1, 2);
        
        //Social Security
        pop_array_r[i][2] = choose(0, 1, 2);
        
        //Education
        pop_array_r[i][3] = choose(0, 1, 2);
        
        //Crime
        pop_array_r[i][4] = choose(0, 1, 2);
        
        //Abortion 
        pop_array_r[i][5] = choose(0, 1, 2);
        
        //Unemployment
        pop_array_r[i][6] = choose(0, 1, 2);
        
        //Nuclear Energy
        pop_array_r[i][7] = choose(0, 1, 2);
        
        //Defense Cuts 
        pop_array_r[i][8] = choose(0, 1, 2);
        
        //Death Penalty 
        pop_array_r[i][9] = choose(0, 1, 2);
        
        //Health Care
        pop_array_r[i][10] = choose(0, 1, 2);
        
        //Environment
        pop_array_r[i][11] = choose(0, 1, 2);
        
        //Taxes
        pop_array_r[i][12] = choose(0, 1, 2);
	}

for (i = 0; i < (number*array[2]); i++) { //Independent
	
		if (party_bias == "D") {
	    //Civil Rights
        pop_array_i[i][0] = choose(2, 3);
        
        //Gun Control 
        pop_array_i[i][1] = choose(2, 3);
        
        //Social Security
        pop_array_i[i][2] = choose(2, 3);
        
        //Education
        pop_array_i[i][3] = choose(2, 3);
        
        //Crime
        pop_array_i[i][4] = choose(2, 3);
        
        //Abortion 
        pop_array_i[i][5] = choose(2, 3);
        
        //Unemployment
        pop_array_i[i][6] = choose(2, 3);
        
        //Nuclear Energy
        pop_array_i[i][7] = choose(2, 3);
        
        //Defense Cuts 
        pop_array_i[i][8] = choose(2, 3);
        
        //Death Penalty 
        pop_array_i[i][9] = choose(2, 3);
        
        //Health Care
        pop_array_i[i][10] = choose(2, 3);
        
        //Environment
        pop_array_i[i][11] = choose(2, 3);
        
        //Taxes
        pop_array_i[i][12] = choose(2, 3);
		} else if (party_bias == "R") {
	    //Civil Rights
        pop_array_i[i][0] = choose(1, 2);
        
        //Gun Control 
        pop_array_i[i][1] = choose(1, 2);
        
        //Social Security
        pop_array_i[i][2] = choose(1, 2);
        
        //Education
        pop_array_i[i][3] = choose(1, 2);
        
        //Crime
        pop_array_i[i][4] = choose(1, 2);
        
        //Abortion 
        pop_array_i[i][5] = choose(1, 2);
        
        //Unemployment
        pop_array_i[i][6] = choose(1, 2);
        
        //Nuclear Energy
        pop_array_i[i][7] = choose(1, 2);
        
        //Defense Cuts 
        pop_array_i[i][8] = choose(1, 2);
        
        //Death Penalty 
        pop_array_i[i][9] = choose(1, 2);
        
        //Health Care
        pop_array_i[i][10] = choose(1, 2);
        
        //Environment
        pop_array_i[i][11] = choose(1, 2);
        
        //Taxes
        pop_array_i[i][12] = choose(1, 2);
		} else if (party_bias == "NA") {
	    //Civil Rights
        pop_array_i[i][0] = choose(1, 2, 3);
        
        //Gun Control 
        pop_array_i[i][1] = choose(1, 2, 3);
        
        //Social Security
        pop_array_i[i][2] = choose(1, 2, 3);
        
        //Education
        pop_array_i[i][3] = choose(1, 2, 3);
        
        //Crime
        pop_array_i[i][4] = choose(1, 2, 3);
        
        //Abortion 
        pop_array_i[i][5] = choose(1, 2, 3);
        
        //Unemployment
        pop_array_i[i][6] = choose(1, 2, 3);
        
        //Nuclear Energy
        pop_array_i[i][7] = choose(1, 2, 3);
        
        //Defense Cuts 
        pop_array_i[i][8] = choose(1, 2, 3);
        
        //Death Penalty 
        pop_array_i[i][9] = choose(1, 2, 3);
        
        //Health Care
        pop_array_i[i][10] = choose(1, 2, 3);
        
        //Environment
        pop_array_i[i][11] = choose(1, 2, 3);
        
        //Taxes
        pop_array_i[i][12] = choose(1, 2, 3);
		}
	}
	
array_copy(pop_array_d, array_length(pop_array_d), pop_array_r, 0, array_length(pop_array_r));
array_copy(pop_array_d, array_length(pop_array_d), pop_array_i, 0, array_length(pop_array_i));

return pop_array_d;
}