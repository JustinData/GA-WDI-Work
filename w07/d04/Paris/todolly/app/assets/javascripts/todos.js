$(function(){
  console.log("loaded")
  completeIt();
});

// creates a strikethrough when a task's checkbox is checked by activating the completed css class.
function completeIt() {
  $("li input[type='checkbox']").on("click", function(){
    $(this).parent().toggleClass("completed");

    console.log($(this).parent().data("todo-id"));
    // $.ajax({
    //     url: "/todos/" + 
    // });
  });
}