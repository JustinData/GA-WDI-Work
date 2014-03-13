var response;
var count = 0;

function formListener(){
	var searchForm = $("#search");
	searchForm.submit( function(e) {
		e.preventDefault();

		var queryValue = $('input').val();
		$('input').val("");

		$.ajax({
			url: "http://api.giphy.com/v1/gifs/search?q=" + queryValue + "&api_key=dc6zaTOxFJmzC&limit=100",
			type: "GET",
			// data: { data: },
			success: function(serverResponse) {
				response = serverResponse;
				count = 0;
			}
		});
	});
};


function appendGif() {
  img =  $("<img src='" + response.data[count].images.original.url + "' />" );
  $("body").append(img);
  count++;
};

function scrollListener(){
	$(window).scroll(function() {
	if($(window).scrollTop() + $(window).height() > $(document).height() - 100) {
		// appendGif();
		var i = 0;
		if(i < 3) {
			appendGif();
			i++;
		}
	}
});
};

window.onload = function(){
	formListener();

	$("#add").on("click", function() {
    	appendGif();
	});

	scrollListener();

};


