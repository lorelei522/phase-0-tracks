// Pseudocode a function that will reverse a string. It will take a string
// as a parameter.


// Reverse the string with a loop
// newString will hold the new reverse
// Loop starts with the last letter by use -1
// returns the new string


function reverse(str) {
	var newString = "";

	for (var i = str.length - 1; i >= 0; i--){
		newString += str[i];
	}

	return newString;
}

console.log(reverse("howdy"));

// store the result of the function in a variable #4

var myFunction= reverse("howdy");