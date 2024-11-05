% Gegenstände von 1..5 -> nehmen oder nicht?
array[1..5] of var 0..1: genommen;
array[1..5] of par int: werte;
array[1..5] of par int: gewicht; 
gewicht = [25, 25, 15, 10,  5];
werte =   [80, 20, 10, 30, 30];

% Gewicht muss unter meine Tragekapazität liegen
par int: kapa = 40; 
constraint sum(i in 1..5) ( genommen[i] * gewicht[i] ) <= kapa;

%solve satisfy;
% maximiere den Wert der genommenen Gegenstände 
solve maximize sum(i in 1..5) ( genommen[i] * werte[i]);