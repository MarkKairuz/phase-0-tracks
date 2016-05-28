/*	7.2 Pairing session
	Mark Kairuz
	I paired with Prajay	*/

var colors = ['blue', 'red', 'green', 'yellow'];

var names = ['Ed', 'Bob', 'Carl', 'Ben'];

var horse = {};

colors.push('purple');
names.push('Bill');

for (var i = 0; i < names.length; i++) {
	horse[names[i]] = colors[i];						//This is one way of putting it
/*	var horse = {name: names[i], color: colors[i]};		//This is another way of putting it
	console.log(horse);
*/
}
console.log(horse);
console.log("-----------------------------")




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