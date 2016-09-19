//Release 0- Find the longest Phrase. 
//My function should take an array of ["long phrase","longest phrase","longer phrase"],
// it would return "longest phrase". 

// function longestPhrase can take an array as an argument
// function will iterate through the array and check every string againest the next one
// add another function and use a forEach loop. Give the loop a conditional IF test


function longestPhrase(strings) {

  var longestFirst = 0;

  strings.forEach(function(phrase) {
    if (phrase.length > longestFirst) {
      longestFirst = phrase.length;
      theLongestPhrase = phrase;
    }

  });

  return theLongestPhrase;
}

// Try 3 different tests with the longest phrase being in a different index

//Test 1
var array= ["Hi there!", "What do you know about Javascript?", "How do you like DBC?"];

console.log("The longest string in the array is:");
console.log(longestPhrase(array));    // What do you know about Javascript? 
//Just checking to see what each of the characters was
//console.log(array[0].length);  9
//console.log(array[1].length);  34 
//console.log(array[2].length);  20

//Test 2
var array2= ["Goldeneye", "Casino Royale", "Diamonds Are Forever"];

console.log("The longest string in array 2 is:");
console.log(longestPhrase(array2));    //Diamonds Are Forever
//console.log(array2[0].length);   9
//console.log(array2[1].length);   13
//console.log(array2[2].length);   20

//Test 3
var array3= ["To Kill A Mockingbird", "1984", "Animal Farm"];

console.log("The longest string in array 2 is:");
console.log(longestPhrase(array3));  //To Kill A Mockingbird
//console.log(array3[0].length);   21
//console.log(array3[1].length);   4
//console.log(array3[2].length);   11

//------------------------------------------------------------------------------------

//Release 1- Find a Key-Value Match
//write a function that takes two objects and checks to see if the objects share at 
//least one key-value pair.

//Function will take two different objects as an argument--  compareObjects(object1, object2)
//for loop to iterate through object1 to check their keys and value.
//Check then object 2. If anything matches the key and values of object1 return true.
// else return false.
//Outputs will be true or false. Print statement for true and statement for false.


function compareObjects(object1, object2) {
	for (var key in object1) {
		if (object2[key] == object1[key]) {
			console.log("The two objects have a match in key-value?");
			return true;	
		}
	}
	console.log("The two objects have a match in key-value?");
	return false;
}

//declare some objects

var dog= {name: 'Spot', age: 3, isGoodPet: true}
var kitten= {name: 'Socks', age: 2, isGoodPet: true}
var bunny= {name: "Honey Loaf", age: 4, isGoodPet: false}
var hamster= {name: 'Spot', age: 5, isGoodPet: false}

//Run some examples of my key-value function

console.log("Dog and kitten are the objects..")
console.log(compareObjects(dog, kitten))       //true, match on isGoodPet

console.log("Bunny and kitten are the objects..")
console.log(compareObjects(bunny, kitten))      //false

console.log("Dog and hamster are the objects..")
console.log(compareObjects(dog, hamster))       //true, match on name


//------------------------------------------------------------------------------------

//Release 3- Random Test