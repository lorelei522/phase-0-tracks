var colors= ["yellow", "pink", "orange", "green"];
var namesHorses= ["Ed", "Secretariat", "George", "Bill"];


colors.push("red");
namesHorses.push("Alex");


//Release1, question 2

var horses = {}

for (var i= 0; i <= colors.length; i ++) {
	horses[namesHorses[i]] = colors [i];
}

console.log(horses)
Object.keys(horses)


//----------------
//Release 2: constructor function for a car

function Car(model, speed, color) {
	console.log("Our new car:", this);

	this.model = model;
	this.speed = speed;
	this.color = color;

	this.turnOn = function() {console.log("vroom vroom!");
	}
	console.log("Car Initialization Complete");
}
var newcar= new Car("BMW", "120mph", "Red");
console.log(newcar);
newcar.turnOn();

var anotherNewCar= new Car("Maserati", "150mph", "Black");
console.log(anotherNewCar);
anotherNewCar.turnOn();

var ourThirdCar= new Car("Dumptruck", "65mph", "Muddy Brown");
console.log(ourThirdCar);
ourThirdCar.turnOn();

//----------------------