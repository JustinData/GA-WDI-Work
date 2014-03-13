window.onload = function() {
	form = document.getElementById("search-users");
	form.addEventListener("submit", function(e) {
		e.preventDefault();
		getUser(form.elements["handle"].value, displayUser)
	});
	// getUser("JustinGA", displayUser);
}

function getUser(user, callback) {
	window.httpRequest = new XMLHttpRequest();

	httpRequest.addEventListener("load", function() {
		console.log(httpRequest.responseText);
		callback(JSON.parse(httpRequest.responseText));
	});

	httpRequest.open("GET", "https://api.github.com/users/" + user);
	httpRequest.send()
};

function displayUser(user) {
	var div = document.createElement("div");

	var img = document.createElement("img");
	img.src = user.avatar_url;

	img.addEventListener('dblclick', function() {
		document.body.removeChild(this.parentNode);
	})

	var nameLink = document.createElement("a");
	nameLink.textContent = user.login;
	nameLink.href = "https//github.com/" + user.login;
	
	div.appendChild(img);
	div.appendChild(nameLink);
	document.body.appendChild(div);
};

