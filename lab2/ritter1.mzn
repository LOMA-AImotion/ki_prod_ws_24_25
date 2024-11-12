var bool : A_ist_Ritter;
var bool : B_ist_Ritter;
var bool : C_ist_Ritter;
var int: anzahl_ritter;
constraint anzahl_ritter = bool2int(A_ist_Ritter) +
                           bool2int(B_ist_Ritter) + 
                           bool2int(C_ist_Ritter);

% A: Genau einer von uns ist ein Schurke.
constraint A_ist_Ritter ->  anzahl_ritter == 2;                        
constraint if not A_ist_Ritter then anzahl_ritter != 2
           endif; 
           
% B: Genau zwei von uns sind Schurken.
constraint if B_ist_Ritter then anzahl_ritter == 1 endif;
constraint if not B_ist_Ritter then anzahl_ritter != 1 endif;    

% C: Wir sind alle Schurken.
constraint if C_ist_Ritter then anzahl_ritter == 0 endif;
constraint if not C_ist_Ritter then anzahl_ritter != 0 endif; 
% Als Äquivalenz   
constraint C_ist_Ritter == (anzahl_ritter == 0);