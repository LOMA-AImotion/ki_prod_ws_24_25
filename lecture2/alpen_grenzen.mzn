% Use this editor as a MiniZinc scratch book
enum Farben = {gruen, rot, blau};
var Farben: deu;
var Farben: aut;
var Farben: ch;

constraint deu != aut;
constraint deu != ch;
constraint aut != ch;