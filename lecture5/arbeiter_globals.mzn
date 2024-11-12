set of int: Workers = 1..5;
set of int: Tasks = 1..3; % Schreinern, Auto, Garten
array[Workers, Tasks] of int: stundensatz;

stundensatz = [| 10, 20, 30 | 
                 40, 50, 70 |
                 70,  5, 20 |
                 15, 90,  5 |
                 20, 30,100 |];
                 
% Weise Aufgaben so zu, dass der Stundensatz insgesamt maximiert wird 
% Jeder Worker kann nur eine Aufgabe machen
array[Tasks] of var Workers: task_to_worker;    

%constraint forall(t1 in Tasks, t2 in Tasks where t1 != t2) (
%   task_to_worker[t1] != task_to_worker[t2]
%);
include "globals.mzn";
include "alldifferent.mzn";

constraint alldifferent(task_to_worker);
                                            
solve minimize sum(t in Tasks) ( stundensatz[task_to_worker[t], t] );