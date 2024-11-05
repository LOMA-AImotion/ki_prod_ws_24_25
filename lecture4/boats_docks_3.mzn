set of int: Docks = 1..3;
set of int: Ships;
array[Ships] of var Docks: ship_to_dock; 

constraint ship_to_dock[1] != 1;
constraint ship_to_dock[2] != 1;