$(function(){
  var body = $(document.body);
  addCat(body, 500, 600);
  addDog(body, 500, 600);
  addPanda(body);
});

function addCat(parent, width, height){
  var kittenURL = "http://placekitten.com/" + width +"/"+ height; 
  var kitten = $("<img>").attr("src", kittenURL).attr("class", "cat");
  parent.append(kitten);
}

function addDog(parent, width, height){
  var puppyURL = "http://placedog.com/" + width +"/"+ height; 
  var puppy = $("<img>").attr("src", puppyURL).attr("class", "dog");
  parent.append(puppy);
}

function addPanda(parent){
  var pandaURL = "http://www.pbh2.com/wordpress/wp-content/uploads/2013/04/cutest-panda-gifs-rocking-horse.gif"; 
  var panda = $("<img>").attr("src", pandaURL).attr("class", "panda");
  parent.append(panda);
}

