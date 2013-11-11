<<<<<<< HEAD
window.onload = function(){
	var inputField = document.getElementbyId("color-field");
	var button = document.getElementbyId("set-color");
	var brush = document.querySelector(".brush");

	button.addEventListener('click', function(){
		var color = inputField.value;
		brush.style.background = color;
	});
=======
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
>>>>>>> 10c220bd8bc79c2a2fc4cb89aaf92725220763ef
}