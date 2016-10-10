// Pseudocode a function that will reverse a string. It will take a string
// as a parameter.


// Reverse the string with a loop


function reverse(str) {
	var newString = "";

	for (var i = str.length - 1; i >= 0; i--){
		newString += str[i];
	}

	return newString;
}

console.log(reverse("howdy"));