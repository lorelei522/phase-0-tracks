// Pseudocode a function that takes a string as a parameter and reverses the string
// reverse("hello") should return "olleh". There is no built in reverse method in Java

// Pseudocode:
// you would declare the variable of the string "hello"

//First try with built in functions- .split, .reverse, .join
function reverse(str) {
//turn the string to an array that splits the string into characters
var splitString= str.split(""); 

//take that new split string and reverse the individual characters. Using the reverse method
var StringinReverseArray= splitString.reverse();

//now that the string is split and in reverse. Join it back together
var joinArray= StringinReverseArray.join("");

// return the reversed string and end the method
return joinArray;
}

console.log(reverse("hello"));


//the above can also look like this in just one line of code

// function reverse(str) {
//	return str.split("").reverse().join("");
// }
// reverse("hello");


//Second try: Reversing a string with a loop and iteration

function reverse2(str) {
	//create an empty string or an empty array that will hold the created reversed string or array
	var updatedString = "";

	// create the loop "for". The loop will start with the last letter (str.length - 1) no matter the length
	for (var i = str.length - 1; i >= 0; i--) {
		updatedString += str[i];
	}
	return updatedString;
}

console.log(reverse2("hello"));