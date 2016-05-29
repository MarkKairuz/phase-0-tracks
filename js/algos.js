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

phrase_array = ["long phrase","longest phrase","longer phrase"];
console.log("The longest phrase of [" + phrase_array + "] is: " + Longest_Phrase(phrase_array) + ".");

phrase_array2 = ["Apple Device","Android Mobile","Windows Phone"];
console.log("The longest phrase of [" + phrase_array2 + "] is: " + Longest_Phrase(phrase_array2) + ".");

phrase_array3 = ["one too many","two of a king","three is a crowd"];
console.log("The longest phrase of [" + phrase_array3 + "] is: " + Longest_Phrase(phrase_array3) + ".");
