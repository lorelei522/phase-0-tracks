//Release 0- Find the longest Phrase. 
//My function should take an array of ["long phrase","longest phrase","longer phrase"],
// it would return "longest phrase". 

// function longestPhrase can take an array as an argument
// function will iterate through the array and check every string againest the next one
// add another function and use a forEach loop. Give the loop a conditional IF test


function longestPhrase(phrases) {

  var longestFirst = 0;

  phrases.forEach(function(phrase) {
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


