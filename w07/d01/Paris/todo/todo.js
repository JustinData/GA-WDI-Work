function ListContainer() {
  this.todoList = [];
}

ListContainer.prototype.push = function (listItem){
  this.todoList.push(listItem);
}

function appendTodo(newContent, ol) {
  var li = document.createElement("li");
  li.innerHTML = newContent;
  ol.appendChild(li);

  // button to delete individual li
  var buttonDelete = document.createElement("button");
  buttonDelete.innerHTML = "Delete";
  buttonDelete.className = "button-delete";
  li.appendChild(buttonDelete);
  buttonDelete.addEventListener("click", function() {
  ol.removeChild(li);

  });

    // move to complete list
  var ul = document.querySelector("ul");
  var buttonMove = document.createElement("button");
  buttonMove.innerHTML = "Move to complete";
  buttonMove.className = "button-move";
  li.appendChild(buttonMove);
  buttonMove.addEventListener("click", function() {
  // ol.removeChild(li);
  ul.appendChild(li);
  // console.log(newList);
  // console.log(li);
  var string = li.textContent;
  var index = string.replace('DeleteMove to complete','');
  console.log(index);
  if (index > -1) {
   var x = newList.todoList.splice(index, 1);
   console.log(x);
  }

  });
}



function appendOl(listItem, ol) {
  ol.innerHTML = "";
  WTK.each(listItem.todoList, function(listItem) {
    appendTodo(listItem, ol);
  });
} 

window.newList = new ListContainer();


function ourSweetLoadFunction() {
  console.log("Loaded");
  var ol = document.querySelector("ol.todo-list");
  var form = document.querySelector("form.add-todo");
  form.addEventListener("submit", function(e) {
    e.preventDefault();
    var input = this.elements["listItem"];
    window.newList.push(input.value);
    window.appendOl(window.newList, ol);
    input.value = "";

  });

  // window.appendOl(window.newList, ol);

}

window.onload = ourSweetLoadFunction;




// create new
// delete
// mark to do complete
// delete from completed