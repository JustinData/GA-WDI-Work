window.onload = function(){
	var inputField = document.getElementbyId("color-field");
	var button = document.getElementbyId("set-color");
	var brush = document.querySelector(".brush");

	button.addEventListener('click', function(){
		var color = inputField.value;
		brush.style.background = color;
	});
}