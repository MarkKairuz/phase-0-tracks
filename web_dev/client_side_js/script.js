function changeColor(event) {
	el_style = event.target.style;

	if(el_style.color == "red") {
		el_style.color = "green";
	} else {
		el_style.color = "red";
	}
};

function addHeader(event) {
	var childElementToAdd = document.createElement("h5");
	var textToAdd = document.createTextNode("MORE STUFFS!!");

	childElementToAdd.appendChild(textToAdd);

	var parentBeingAddedTo = document.getElementById("example");

	// Weird bugs created by this line when looking at elements section
	// of chrome developer tools.
	// parentBeingAddedTo.appendChild(childElementToAdd);
	document.body.appendChild(childElementToAdd);
};

var headerEl = document.getElementById("example");
headerEl.addEventListener("click", changeColor);
headerEl.addEventListener("click", addHeader);