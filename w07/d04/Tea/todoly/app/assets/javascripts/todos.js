$(function(){
  console.log("LOADED");
  strikeThrough();
})

function strikeThrough(){
  $('li input[type="checkbox"]').on("click", function(){
    $(this).parent().toggleClass("completed");
    console.log($(this).parent().data("todo-id"));
  });
}