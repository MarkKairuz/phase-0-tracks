// Mark Kairuz



// pseudocode

// take array of words or phrases

// get .length of each string

// compare string lengths

// return the longest word or phrase in array

// driver code to test



function Longest_Phrase(array_of_phrases) {

var longest_string = "";

	for (var i = 0; i < array_of_phrases.length; i++) {
		if (longest_string.length < array_of_phrases[i].length) {
			longest_string = array_of_phrases[i];
		}
	}
	return longest_string;
}


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






// test the functions
phrase_array = ["long phrase","longest phrase","longer phrase"];
console.log("The longest phrase of [" + phrase_array + "] is: " + Longest_Phrase(phrase_array) + ".");

phrase_array2 = ["Apple Device","Android Mobile","Windows Phone"];
console.log("The longest phrase of [" + phrase_array2 + "] is: " + Longest_Phrase(phrase_array2) + ".");

phrase_array3 = ["one too many","two of a king","three is a crowd"];
console.log("The longest phrase of [" + phrase_array3 + "] is: " + Longest_Phrase(phrase_array3) + ".");


first_object = {name: "Steven", age: 54};
second_object = {name: "Tamir", age: 54};
console.log("Do these have similar key-value set?: ");
console.log(first_object);
console.log(second_object);
console.log("Answer: " + Key_Value_Match(first_object, second_object));


