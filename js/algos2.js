// Release 0
// Write a function that takes an array of words and returns the longest
// word/phrase in the array

//ie. ["long phrase","longest phrase","longer phrase"]
// function will return "longest phrase".

// iterate through each of the elements in the array.
//Compare the first element against the next for length.

function longest(strings) {
	var firstElement= 0;

	strings.forEach(function(string) {
		if (string.length > firstElement) {

			firstElement = string.length;
			longest = string;
		}

	});

	return longest;
};

