var x, y;
x = 7; //x le asigno el valor numérico 7
y = 4;
document.getElementById("result1").innerHTML = "7 + 4 = " + (x + y);
document.getElementById("result2").innerHTML = "7 - 4 = " + (x - y);
document.getElementById("result3").innerHTML = "7 * 4 = " + x * y;
document.getElementById("result4").innerHTML = "7 / 4 = " + x / y;
document.getElementById("result5").innerHTML = "7 % 4 = " + (x % y);
// x=x+1 <==> x++ <==> ++x
console.log("El valor de x es: " + x); //x es 7
//x se muestra el 7 x es 8
console.log("El valor de x++ es: " + x++);
//Mostramos el valor x
console.log("El valor de x es: " + x);
console.log("El valor de ++x es: " + ++x); //x es 9
//Mostramos el valor x
console.log("El valor de x es: " + x);
//COMPARACIÓN
document.getElementById("resultadocomparadores").innerHTML =
  "Resultado de x!=y? " + (x != y);
