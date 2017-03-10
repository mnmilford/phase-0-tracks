var colors = ["blue", "green", "purple", "red"]
var names = ["Tyler", "Andrew", "Katy", "Glenna"]

colors.push("orange")
names.push("Emmanuel")

// Function to add hash-like values from two different arrays
var horses = {};
for (var i = 0; i < colors.length; i++) {
  horses[names[i]] = colors[i];
}

console.log(horses);

// Function to create a new Car object
function Car(make, model, mileage) {
  
  this.make = console.log(make);
  this.model = model;
  this.mileage = mileage;
  this.rev = function() { console.log("Vroom!"); };
  this.noise = "Vroom! Vroom!";
  
}

// Driver code to test Car constructor function
var car1 = new Car("Honda", "Civic", 500000);
var car2 = new Car("Toyota", "Tundra", 60000);
console.log(car1);
console.log(car2);
car1.rev();
console.log(car1.noise);