// Release 0
// Write a function that takes an array of words and returns the longest
// word/phrase in the array

//ie. ["long phrase","longest phrase","longer phrase"]
// function will return "longest phrase".

// iterate through each of the elements in the array.
//Compare the first element against the next for length.

function longest_function(strings) {
	var firstElement= 0;

	strings.forEach(function(string) {
		if (string.length > firstElement) {

			firstElement = string.length;
			longest = string;
		}

	});

	return longest;
};

// Add driver code that will take a few different arrays as examples

var array= ["long phrase", "longest phrase", "longer phrase"];
console.log("Longest string in above array is:");
console.log(longest_function(array));
//should return "longest phrase"


var array2= ["Gin and Soda", "Manhattan", "Tom Collins", "Old Fashion"];
console.log("Longest string in above array is:");
console.log(longest_function(array2));

var array3= ["Union Square", "Upper East Side", "Financial District", "Soho", "Chinatown"]
console.log("Longest string in above array is:");
console.log(longest_function(array3));


// Release 1
// function that takes two objects and checks to see if the objects 
// share at least one key-value pair.

//Function will take two examples as arugments for comparison
// Iterate through the key and value of each example.
// If any matches occur it will return true.
// else return false


function KeyValueMatch(object1, object2) {
	for (var key in object1) {
		if (object2[key] == object1[key]) {
			console.log("Do these two objects have a key-value match?");
				return true;
		}
	}
			console.log("Do these two objects have a key-value match?");
				return false;
}


//Add driver code to test out KeyValueMatch function
// Cities of the World

var newyork= {name: 'New York City', mainlanguage: "english", country: "USA"};
var madrid= {name: 'Madrid', mainlanguage: "spanish", country: "Spain"};
var rome= {name: 'Rome', mainlanguage: "italian", country: "Italy"};
var portland= {name: 'Portland', mainlanguage: "enlgish", country: "USA"};
var london= {name: 'London', mainlanguage: "english", country: "England"};
var mendoza= {name: 'Mendoza', mainlanguage: "spanish", country: "Argentina"};

console.log(KeyValueMatch(newyork, london)) 
console.log(KeyValueMatch(portland, mendoza)) 
console.log(KeyValueMatch(madrid, mendoza)) 
console.log(KeyValueMatch(rome, madrid)) 
console.log(KeyValueMatch(newyork, portland)) 


//Release 2 Generate Random Test Data
//Write a function that takes an integer for length, and builds and returns an 
//array of strings of the given length. So if we ran your function with an 
//argument of 3, we would get an array of 3 random words back (the words don't 
//have to be actual sensical English words 

//function will take an integer as an arugment
// each word will be random, with a minimum of 1 letter and a max of 10 letters.

// Steps:
// take an integer arugment for randomTest function
// declare a variable with the letters of the alphabet
// declare an empty variable for each word
// create an empty array to hold the words it will create
// Built in methods to use: Math.floor() rounds down, Math.random() returns a random number
// 
// push the new words into the empty array
// return the finish array


function randomTest(integer) {
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	var generatedWord = '';
	var randomWords = [];


	for (var i = 0; i < integer; i ++) {
		for (var index = 0; index < (Math.floor(Math.random() * 10) + 1); index++) {
			generatedWord += alphabet[Math.floor(Math.random() * 26)];
		}
		randomWords[i]= generatedWord;
	}
	return randomWords
}


// Driver Code notes for Release 2 

// Add driver code that does the following 10 times: 
// 			generates an array, prints the array, 
//			feeds the array to your "longest word" function,
//			and prints the result.

// make a loop that will do this 10 times.
//console.log(randomTest(10));

for (l = 0; l < 10; l++) {
	console.log("Longest word in the random array is " + longest_function(randomTest(8)));
}