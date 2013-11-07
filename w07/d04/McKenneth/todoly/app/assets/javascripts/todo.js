
$(function(){
  console.log("loaded");
  completeIt();
})

function completeIt(){
$("input#completed").on("click", function(){
  $(this).parent().toggleClass("completed");
  $.ajax({
    url: "/todos/" + $(this).parent().data("todo-id")
  });
});
}



// function completeIt(){
// $("li input[type='checkbox']").on("click", function(){
//   $(this.parentNode).toggleClass("completed");
// });
// }