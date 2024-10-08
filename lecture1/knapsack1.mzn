% Use this editor as a MiniZinc scratch book
set of int: Gegenstaende = 1..3; 
array[Gegenstaende] of var 0..1: genommen; 
array[Gegenstaende] of int: wert = [40, 33, 42];
array[Gegenstaende] of int: gewicht = [5, 3, 7];

constraint sum(g in Gegenstaende where genommen[g] == 1)(gewicht[g]) <= 10;
solve maximize sum(g in Gegenstaende where genommen[g] == 1) (wert[g]); 