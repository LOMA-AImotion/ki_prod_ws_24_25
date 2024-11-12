par int: n; 
array[1..n] of var 1..n: werte;

% Die Werte sollen aufsteigend sein:

% "zu Fuß" mit forall 
%constraint forall(i in 1..n-1) (
%  werte[i+1] > werte[i]
%);

% mit global Constraint "increasing"
include "globals.mzn";
include "increasing.mzn";

constraint strictly_increasing(werte);

output ["Der Wert von n ist \(n) mit Werten: \(werte)"];