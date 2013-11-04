function ToDoList() {
	this.list_items = [];
}

ToDoList.prototype.push = function(user_item) {
  // OOOOHHHHHH!
  this.list_items.push(user_item);
} 


function addToDo(user_item, ordered_list){
 
  var li = document.createElement("li"); // <li>
  li.innerHTML = user_item; // <li>innerHTML</li>
  ordered_list.appendChild(li);

}

function appendToDo(ToDo, ordered_list){
	ordered_list.innerHTML = "";

	 for( var i = 0; i < ToDo.list_items.length; i++ ){
	   addToDo(ToDo.list_items[i], ordered_list);
	 }
}

window.ToDo = new ToDoList();
ToDo.push("test");

function loadList() {
	var ordered_list = document.getElementById("todo-items"); // <ol>
	var input = document.getElementById("add-item"); // <button>
  input.addEventListener('click', function() {
  var item = document.getElementById("new-task-field"); // <input>.value

		ToDo.push(item.value);
		item.value = "";
   });

	window.appendToDo(window.ToDo, ordered_list);
}
window.onload = loadList;
  

