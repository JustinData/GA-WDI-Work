function TodoItem(){
  this.itemContainer = [];
}

TodoItem.prototype.push = function(item) {
  this.itemContainer.push(item);
};


function appendLi(newItem, ol) {
  var li = document.createElement("li");
  li.innerHTML = newItem;
  ol.appendChild(li);
}

function appendItems(newItem, ol) {
  ol.innerHTML = "";
  WTK.each(newItem.itemContainer, function(item) {
    appendLi(item, ol);
  });
}

todo = new TodoItem();



function loadFunction() {
  console.log("Loaded");
  var ol = document.querySelector("ol#todo-items");
  var button = document.getElementById('add-item');
    button.addEventListener("click", function(e) {
      var input = document.getElementById('new-task-field');
      todo.push(input.value);
    appendItems(todo, ol);
    input.value = "";
  });
   window.appendItems(window.todo, ol);
}

window.onload = loadFunction;

