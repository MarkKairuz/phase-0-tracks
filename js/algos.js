// algos.js
// 7.3
// Mark Kairuz



// pseudocode
// take array of words or phrases
// 	get .length of each string
// 	compare string lengths
// 	return the longest word or phrase in array
// driver code to test with return of longest string

function Longest_Phrase(array_of_phrases) {

var longest_string = "";

	for (var i = 0; i < array_of_phrases.length; i++) {
		if (longest_string.length < array_of_phrases[i].length) {
			longest_string = array_of_phrases[i];
		}
	}
	return longest_string;
}



// pseudocode
// initiate function for two objects input
// 	for loop to choose each key from first object
// 	compate the value from that key
// return true or false depending on comparison


function Key_Value_Match(object1, object2) {

var key_value_pair = false;
key_count = Object.keys(object1).length;
	for (var i = 0; i < key_count; i++) {
		key = Object.keys(object1)[i];
		if (object1[key] == object2[key]) {
			key_value_pair = true;
		}
	}
return key_value_pair;
}



// pseudocode
// initiate functin to accept a number of words to generate
// have a character string for the alphabet
//	For loop for the the number of words to generate
//	For loop for generating random letters for a random length 1 to 10
//		use alphabet stind with the index of the random length and store in a variable
//	Save new string into an array
//	Use array to drive for the longest phrase.
// return the longest phase

function Random_Test_Data(number_of_words) {
	word_result = [];
	for (var i=0; i<number_of_words; i++){
		var characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		var string_length = Math.floor((Math.random() * 10) +1);
		randomstring = "";
		for (var x=0; x<string_length; x++) {
			var random_string_number = Math.floor(Math.random() * characters.length);
			randomstring += characters.substring(random_string_number,random_string_number+1);
		}
		word_result[i] = randomstring;
	}
	console.log("From these random words: " + word_result);
	var longest_random_word = Longest_Phrase(word_result);
	return longest_random_word;
}






// test the functions for Longest Phrase
phrase_array = ["long phrase","longest phrase","longer phrase"];
console.log("The longest phrase of [" + phrase_array + "] is: " + Longest_Phrase(phrase_array) + ".");

phrase_array2 = ["Apple Device","Android Mobile","Windows Phone"];
console.log("The longest phrase of [" + phrase_array2 + "] is: " + Longest_Phrase(phrase_array2) + ".");

phrase_array3 = ["one too many","two of a king","three is a crowd"];
console.log("The longest phrase of [" + phrase_array3 + "] is: " + Longest_Phrase(phrase_array3) + ".\n");



// test the functions for Key-Value Match
first_object = {name: "Steven", age: 54};
second_object = {name: "Tamir", age: 54};
console.log("Do these have similar key-value set?: ");
console.log(first_object);
console.log(second_object);
console.log("Answer: " + Key_Value_Match(first_object, second_object) + "\n");

first_object2 = {name: "Sean", age: 24};
second_object2 = {cat: "Sean", age: 4};
console.log("Do these have similar key-value set?: ");
console.log(first_object2);
console.log(second_object2);
console.log("Answer: " + Key_Value_Match(first_object2, second_object2) + "\n");



// test the random words generator
// include a for loop to generate results 10 times
for (var i=0; i<10; i++){
	console.log(Random_Test_Data(Math.floor((Math.random() * 10) +1)) + " is the longest word.\n");
}

