//Release 0- Find the longest Phrase. 
//My function should take an array of ["long phrase","longest phrase","longer phrase"],
// it would return "longest phrase". 

// function can take an array as an argument
// function will iterate through the array and check every string
// use a for loop. Give the loop a conditional IF test


function findLongestPhrase(strings) {
  this.phrases = strings;

  for (var i = 0; i < this.phrases.length; i++) {
    if (this.phrases[i] > this.phrases[i + 1]) {
      var longest_str = this.phrases[i]
    }
  }
  return longest_str
};

//Test 1
var array= ["Hi there girl!", "What do you know about Javascript", "How do you like DBC?"]

console.log("The longest string in the array is:")
console.log(findLongestPhrase(array))

//Test 2

var array2= [""]