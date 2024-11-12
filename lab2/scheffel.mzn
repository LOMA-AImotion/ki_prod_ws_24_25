set of int: AnzPersonen = 0..100;

var AnzPersonen: kinder;
var AnzPersonen: maenner;
var AnzPersonen: frauen;

constraint frauen == 5*maenner;
constraint kinder + maenner + frauen == 100;

constraint 6*maenner + 4*frauen +  kinder == 200;