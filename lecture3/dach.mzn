% Landkartenfärben für die DACH-Region

% Definiere Domänen = Wertebereiche
enum Farben = {rot, gruen, blau};

% Entscheidungsvariablen - was soll der Solver beantworten?
var Farben: aut;
var Farben: ger;
var Farben: ch;

% Bedingungen = Constraints - was muss gelten? 
constraint aut != ger;
constraint ger != ch;
constraint aut != ch;
constraint ch != aut;
