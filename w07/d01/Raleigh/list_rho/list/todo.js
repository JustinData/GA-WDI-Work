function ToDoList() {
  this.list_items = [];
}

ToDoList.prototype.pushItem = function(user_item) {
  this.list_items.push(user_item);
} 


function addToDo(user_item, ordered_list){
   var li = document.createElement("li"); // <li>
   li.innerHTML = user_item; // <li>innerHTML</li>

   ordered_list.appendChild(li);
}

function appendToDo(toDo, ordered_list){
   ordered_list.innerHTML = "";

   for( var i = 0; i < toDo.list_items.length; i++ ){
      addToDo(toDo.list_items[i], ordered_list);
   }
}

window.toDo = new ToDoList();
toDo.pushItem("Buy Milk");

function loadList() {
   var ordered_list = document.getElementById("todo-items"); // <ol>

   var input = document.getElementById("add-item"); // <button>
   input.addEventListener('click', function() {
      var item = document.getElementById("new-task-field"); // <input>

      window.toDo.pushItem(item.value); // <input>.value
      item.value = "";
   });

    window.appendToDo(window.toDo, ordered_list);
}

window.onload = loadList;

