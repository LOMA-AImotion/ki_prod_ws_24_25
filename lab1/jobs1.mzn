enum Aufgaben = {beer, music, pretzels, flyer, renting};
array[Aufgaben] of int: duration = [ 20, 30, 60, 15, 25];

enum Personen = {Anna, Benedikt, Carina};
array[Aufgaben] of var Personen: erledigt_von; 

var int: dauer;
constraint dauer = max(p in Personen)(
                      sum(a in Aufgaben where erledigt_von[a] = p) (duration[a]) 
                   );
                   
solve maximize dauer;