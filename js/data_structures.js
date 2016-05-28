var colors = ['blue', 'red', 'green', 'yellow'];

var names = ['Ed', 'Bob', 'Carl', 'Ben'];

colors.push('purple');
names.push('Bill');

for (var i = 0; i < names.length; i++) {

	var horse = {name: names[i], color: colors[i]};
	console.log(horse);
}




function Car(model, color, engine, isAwesome) {

	console.log("New car is being created!");

	this.model = model;
	this.color = color;
	this.engine = engine;
	this.isAwesome = isAwesome;

	this.drive = function() { console.log("The " + model + " is moving forward"); };

}

console.log("First car!!");
var corvette = new Car('Corvette', 'Red', 'V8', true);
console.log(corvette);
corvette.drive();

console.log("Second car!!");
var mustang = new Car('Mustang', 'Blue', 'V8', true);
console.log(mustang);
mustang.drive();