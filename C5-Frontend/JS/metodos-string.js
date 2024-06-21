let texto = "JavaScript es increíble", longitud= texto.length; //Primer ejercicio
let tej2= " Bienvenido a la programación "; //Segundo ejercicio

//Primer ejercicio
console.log(longitud);
console.log("Slice:", texto.slice(14)); // "increíble"
console.log("Substr:", texto.substr(0, 10)); // "JavaScript"

//Segundo ejercicio
console.log("Trimar trim() quita los espacios al string: " + tej2.trim());
let sinespacios= tej2.trim();
console.log(tej2.toUpperCase());
let mayus = sinespacios.toUpperCase();
console.log(tej2.replace("programación", "JavaScript"));
let minus = sinespacios.toLowerCase();
let javascript = minus.replace("programación", "JavaScript");
console.log(tej2.trim().concat(" en 2024!"));
let completo = javascript.concat(" en 2024!");
console.log(completo);