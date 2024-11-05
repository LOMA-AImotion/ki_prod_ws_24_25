% defined by solver
var 1..10: number_cars ;
var 1..10: number_busses; 

% defined before solving (by us) 
par 1..10: people_per_car = 3;
par 1..10: people_per_bus = 9;
% par can be left out
1..100: people_to_transport = 50;

constraint number_cars * people_per_car + 
           number_busses * people_per_bus >= people_to_transport;
           
solve minimize number_cars + number_busses; 

% ähnlich zu print() in Python -> aber erst nach der Lösung ausgegeben
output 
["We need \(number_cars) cars and \(number_busses) busses."];
output ["Sounds good." ];