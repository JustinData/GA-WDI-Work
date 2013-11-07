$(function () {
  console.log("loaded")
  completeIt();
});

function completeIt () {
  $('li input[type = checkbox]').on('click', function () {
   $(this).parent().toggleClass('completed'); 

   console.log($(this).parent().data('todo-id'));

   // jQuery.ajax({
   //  url: "/todos/" + 
   // })
  });
}


