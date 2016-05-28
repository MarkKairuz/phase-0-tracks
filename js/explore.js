// 7.1 Syntax
// Mark Kairuz

// reverse("hello") function
//	initiate new word variable
//	start for loop
//	initiate counter variable as the str.length
//	loop for counter variable is greater than 0
//	increment counter variable by -1.
//	save the character according to the counter variable into the new word variable: new_word = new_word + old_word(counter variable)


function reverse(old_word) {

	var new_word = "";
	for (var i = old_word.length; i > 0; i--) {
		new_word = new_word + old_word[i-1];
	}
	return new_word;
}

function is_it_true(num1,num2,var1) {

	if (num1 == num2) {
		console.log(var1);
	}
}

console.log(reverse("hello"));
console.log(reverse("not a plindrome!"));
is_it_true(1,1,"the variable");
