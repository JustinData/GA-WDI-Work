function TodoItem(){
  this.itemContainer = [];
}

TodoItem.prototype.push = function(item) {
  this.itemContainer.push(item);
};


function appendDiv(newItem, ol) {
  var span = document.createElement('span');
  span.className = 'meta-data';

  var deleteButton = document.createElement('button');
  deleteButton.className = 'delete';

  var completedButton = document.createElement('button');
  completedButton.className = 'complete';

  var divAction = document.createElement("div");
  divAction.className = "actions";
  divAction.appendChild(deleteButton);
  divAction.appendChild(completedButton);
  divAction.appendChild(span);

  var li = document.createElement('li');
  var div = document.createElement("div");
  div.className = "items";
  div.appendChild(divAction);
  div.innerHTML = newItem;
  li.appendChild(div);
  ol.appendChild(li);

}

function appendItems(newItem, ol) {
  ol.innerHTML = "";
  WTK.each(newItem.itemContainer, function(item) {
    appendDiv(item, ol);
 });
}

todo = new TodoItem();


function removeItems (div, ol) {
  var deleteButton = document.createElement("button");
  deleteButton.className = "delete";
    deleteButton.addEventListener("click", function() {
  ol.parentNode.removeChild(ol);
  });
}


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

