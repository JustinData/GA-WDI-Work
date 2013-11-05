window.onload = function() {
	var input = document.getElementById("color-field");
	var button = document.getElementById("set-color");
	var brush = document.querySelector(".brush");

	button.addEventListener("click", function(event){
		var color = input.value;
		brush.style.background = color;
	});
}