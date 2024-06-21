let array = [1, 2, 3, 4, 5];

// toString()
console.log("toString:", array.toString()); // "1,2,3,4,5"

// join()
console.log("join:", array.join(" - ")); // "1 - 2 - 3 - 4 - 5"

// pop()
let popped = array.pop();
console.log("pop:", popped); // 5
console.log("array after pop:", array); // [1, 2, 3, 4]

// push()
array.push(6);
console.log("push:", array); // [1, 2, 3, 4, 6]

// shift()
let shifted = array.shift();
console.log("shift:", shifted); // 1
console.log("array after shift:", array); // [2, 3, 4, 6]

// unshift()
array.unshift(0);
console.log("unshift:", array); // [0, 2, 3, 4, 6]

// concat()
let newArray = array.concat([7, 8, 9]);
console.log("concat:", newArray); // [0, 2, 3, 4, 6, 7, 8, 9]

// copyWithin()
newArray.copyWithin(2, 0, 2);
console.log("copyWithin:", newArray); // [0, 2, 0, 2, 6, 7, 8, 9]

// every()
let allAboveZero = newArray.every(num => num >= 0);
console.log("every:", allAboveZero); // true

// filter()
let filtered = newArray.filter(num => num > 2);
console.log("filter:", filtered); // [6, 7, 8, 9]

// flat()
let nestedArray = [1, [2, [3, [4]], 5]];
let flattened = nestedArray.flat(2);
console.log("flat:", flattened); // [1, 2, 3, [4], 5]

// flatMap()
let flatMapped = array.flatMap(num => [num * 2]);
console.log("flatMap:", flatMapped); // [0, 4, 6, 8, 12]

// forEach()
array.forEach(num => console.log("forEach:", num * 2));

// indexOf()
console.log("indexOf 3:", array.indexOf(3)); // 2

// lastIndexOf()
console.log("lastIndexOf 3:", array.lastIndexOf(3)); // 2

// map()
let mapped = array.map(num => num * 2);
console.log("map:", mapped); // [0, 4, 6, 8, 12]

// reduce()
let sum = array.reduce((acc, num) => acc + num, 0);
console.log("reduce (sum):", sum); // 15

// reduceRight()
let sumRight = array.reduceRight((acc, num) => acc + num, 0);
console.log("reduceRight (sum):", sumRight); // 15

// reverse()
let reversed = array.slice().reverse();
console.log("reverse:", reversed); // [6, 4, 3, 2, 0]

// slice()
let sliced = array.slice(1, 4);
console.log("slice:", sliced); // [2, 3, 4]

// some()
let someAboveFour = array.some(num => num > 4);
console.log("some:", someAboveFour); // true

// sort()
let sorted = array.slice().sort((a, b) => b - a);
console.log("sort:", sorted); // [6, 4, 3, 2, 0]

// splice()
let spliced = array.splice(2, 2, 99, 100);
console.log("splice:", spliced); // [3, 4]
console.log("array after splice:", array); // [0, 2, 99, 100, 6]
