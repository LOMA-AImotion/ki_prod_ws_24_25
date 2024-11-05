set of int: Workers = 1..5;
var Workers: main_worker;
var Workers: apprentice; 
var set of Workers: hired_workers;

constraint main_worker in hired_workers;
constraint not(apprentice in hired_workers);

constraint main_worker != apprentice;