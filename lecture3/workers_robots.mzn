set of int: Robots = 1..10;
set of int: Workers = 1..5;

array[Robots] of var Workers: is_operated_by;
% auch Parameter können mit Arrays verbunden werden
array[Workers] of par set of Robots: can_work_on = 
 [ 1..10, 
   2..9,
   3..6,
   {1, 5, 9},
   6..10]; % Zahlen untereinander nur für bessere Lesbarkeit
   