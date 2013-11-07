$(function(){
  console.log("LOADED!");
  completeIt();
});

function completeIt() {
  $("li input[type='checkbox']").on("click", function() {
    $(this).parent().toggleClass("completed");
  });
}
