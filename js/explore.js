// Pseudocode a function that takes a string as a parameter and reverses the string
// reverse("hello") should return "olleh". There is no built in reverse method in Java

// Pseudocode:
// you would declare the variable of the string "hello"


function reverseString(str) {
//turn the string to an array that splits the string into characters
var splitString= str.split(""); 

//take that new split string and reverse the individual characters. Using the reverse method
var StringinReverseArray= splitString.reverse();

//now that the string is split and in reverse. Join it back together
var joinArray= StringinReverseArray.join("");

// return the reversed string and end the method
return joinArray;
}

reverseString("hello");