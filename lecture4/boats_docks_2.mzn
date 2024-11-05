set of int: Docks = 1..3;
array[1..5] of var Docks: ships; 

constraint ships[1] != 1;
constraint ships[2] != 1;