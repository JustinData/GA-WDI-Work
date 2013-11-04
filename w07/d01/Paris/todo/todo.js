function listContainer() {
  this.todoList = [];
}

listContainer.prototype.push = function (listItem){
  this.todoList.push(listItem);
}

function appendTodo(newContent, ul) {

  var li = document.createElement("li");
  li.innerHTML = newContent;
  ul.appendChild(li);
}

function appendUl(listItem, ul) {
  ul.innerHTML = "";
  WTK.each(listItem.todoList, function(listItem) {
    appendTodo(listItem, ul);
  });
}

window.newList = new listContainer();
  

function ourSweetLoadFunction() {
  console.log("Loaded");
  var ul = document.querySelector("ul.todo-list");
  var form = document.querySelector("form.add-todo");
  form.addEventListener("submit", function(e) {
    e.preventDefault();
    var input = this.elements["listItem"];
    window.newList.push(input.value);
    window.appendUl(window.newList, ul);
    input.value = "";

  });

  window.appendUl(window.newList, ul);

}

window.onload = ourSweetLoadFunction;




// create new
// delete
// mark to do complete
// delete from completed