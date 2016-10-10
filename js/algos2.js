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