var colors = ["blue", "green", "pink", "red"];

var horses_names = ["apple", "carrot", "dusty", "tonto"];

colors.push("grey");

horses_names.push("Sam");

var horses = {}

for (var i = 0; i < colors.length; i++){
  horses[horses_names[i]] = colors[i];
}

console.log(horses)

function Car(model, speed, color) {
  console.log("Our Car:", this);

    this.model = model;
    this.speed = speed;
    this.color = color;

    this.TurnCarOn = function(){
      console.log("Vroom Vroom!");
    };

    console.log("CAR INITIALIZATION COMPLETE");
}

var newcar = new Car("Ford", "60mph", "Black");
console.log(newcar);
newcar.TurnCarOn();

var newcartwo = new Car("Prius", "55mph", "Red");
console.log(newcartwo);
newcartwo.TurnCarOn();

var newcarthree = new Car("Jeep", "80mph", "White");
console.log(newcarthree);
newcarthree.TurnCarOn();