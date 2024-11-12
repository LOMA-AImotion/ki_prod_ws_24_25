var 0..10: x;

% x soll durch 4 teilbar sein
%constraint x mod 4 == 0;
var 0..10: z;
constraint z*4 == x;

solve minimize (x-7)^2;