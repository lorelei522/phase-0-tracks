// create one array of four colors and one array of 4 names for your horses

var colors= ['hot pink', 'sky blue', 'bright orange', 'black darkness']
var horseNames= ['American Pharoah', 'War Admiral', 'California Chrome', 'Secretariat']


// push a new horse name and a new horse name and new color into the different arrays

colors.push('fiery red')
console.log(colors)

horseNames.push('Man o War')
console.log(horseNames)

//Release 1-We need to assign colors to horses. In data_structures.js, add code that 
//will use your two arrays to create an object. The keys of your object should be horse names, 
//and the values should be colors. Your solution should be something that would work for any number of 
//colors/horses, as long as the two arrays are the same length. This is a logical reasoning step 
//-- try to think it through instead of Googling it.

// create an empty object called horses
var horses= {}
//loop through the colors array. assign horses object horseNames as the key and colors as the value
for (var i = 0; i <= colors.length - 1; i++){
horses[horseNames[i]] = colors[i];
}
//print the new objects of horses
console.log(horses)


//--------------------
//Release 2
//write a constructor function for a car. Give it a few different properties of various
// data types, including at least one function. Demonstrate that your function works 
//by creating a few cars with it.

function Car(model, year, isAutomatic) {
	console.log("Our new car:", this);

	this.model = model;
	this.year = year;
	this.isAutomatic= isAutomatic;

	//a function for the Car object to turnOn and print zoom zoom when it is called
	this.turnOn = function() {console.log('zoom zoom!'); };

	console.log("Car Initialization Complete");
}

console.log("Let's go to the dealership and get a new car..")

var newCar= new Car ("Maserati", 2016, true);
console.log(newCar)
console.log("The car goes like this when it turns on..")
//call the function we described inside of the Car constructor function
newCar.turnOn();

