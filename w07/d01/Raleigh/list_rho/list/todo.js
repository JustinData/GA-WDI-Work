function addToDo(user_item){
   this.item = user_item;
   var ordered_list = document.getElementById("todo-items"); // <ol>

   var new_item = document.createElement("li"); // <li>
   new_item.innerHTML = item; // <li>innerHTML</li>

   ordered_list.appendChild(new_item);

}


window.onload = function() {
   var input = document.getElementById("add-item"); // <button>
   input.addEventListener('click', function() {
      var item = document.getElementById("new-task-field").value; // <input>.value

      addToDo(item);
   });

}

