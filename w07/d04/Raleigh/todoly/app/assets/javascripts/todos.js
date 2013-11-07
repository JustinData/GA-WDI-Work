$(function(){
   checkIt();
});


function checkIt(){
   $("li input[type='checkbox']").on('click', function(){
      $(this).parent().toggleClass("completed");
   });
}