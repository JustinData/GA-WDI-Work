// function changeColor(color) {
// 	square.style.background = color;
// 	inputField.value = ""
// }


window.onload = function() {
	var brush = document.querySelector(".brush");
	var button = document.getElementById("set-color");
	var inputField = document.getElementById("color-field");
	// input = ""

	button.addEventListener("click", function(){
		var color = inputField.value;
		brush.style.background = color;
	})
}