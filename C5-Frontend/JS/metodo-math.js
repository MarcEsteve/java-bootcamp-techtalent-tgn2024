//Declaración de variables
var x, y, z, mayor, menor, aleatorio, w, k;

//Asignación de variables 
x=5.5;
y=4.003;
z=3.9999;
w = -13;
k=9;

//Acciones/cálculos
x=Math.round(x);
document.getElementById("resulround").innerHTML = "(x es 5,5) El Math.round(x) es: " + x;
y=Math.ceil(y);
document.getElementById("resulceil").innerHTML = "(y es 4,003) El Math.ceil(y) es: " + y;
z=Math.floor(z);
document.getElementById("resulfloor").innerHTML = "(z es 3,9999) El Math.floor(z) es: " + z;
mayor=Math.max(x,y,z);
document.getElementById("resulmax").innerHTML = "El Math.max(x,y,z) es: " + mayor;
menor=Math.min(x,y,z);
document.getElementById("resulmin").innerHTML = "El Math.min(x,y,z) es: " + menor;
aleatorio = Math.round(Math.random()*100000);
document.getElementById("resulrandom").innerHTML = "El Math.random() dará: " + aleatorio;
w = Math.abs(w);
document.getElementById("resulabs").innerHTML = "(w es -13) El Math.abs(w) es: " + w;
k = Math.sqrt(k);
document.getElementById("resulsqrt").innerHTML = "(k es 9) El Math.sqrt(k) es: " + k;