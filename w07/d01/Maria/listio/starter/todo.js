listItems =[];

function makeElem(list){//(list)is just empty intil we call make element and pass it the listItems array on line 37.
  li = document.createElement("li");//creating li

  itemDiv = document.createElement("div");//creating div
  itemDiv.setAttribute("class", "items");//creating the class name
  itemDiv.innerHTML = list[list.length -1];//put inside div the last thing in array

  completeButton = document.createElement("button");//create button
  completeButton.setAttribute("id", "complete");//give button the complete attribute
  completeButton.innerHTML = "complete"; //label the button 'complete'
  completeButton.addEventListener("click", function(){
    completeTasks.appendChild(li);
    actionDiv.removeChild(completeButton);
  });

  deleteButton = document.createElement("button");
  deleteButton.setAttribute("id", "delete");
  deleteButton.innerHTML ="delete";
  deleteButton.addEventListener("click", function(){
    li.parentElement.removeChild(li);
  });

  actionDiv = document.createElement("div");
  actionDiv.setAttribute("class", "actions");

  timeSpan = document.createElement("span");
  timeSpan.innerHTML = new Date();
  
  actionDiv.appendChild(timeSpan);
  actionDiv.appendChild(completeButton);
  actionDiv.appendChild(deleteButton);

  //give todoitems the buttons

  todoItems = document.getElementById("todo-items");//get the id todo-items
  todoItems.appendChild(li);
  li.appendChild(itemDiv);

  itemDiv.appendChild(actionDiv);
  
}

function addItem(elem){//really important for calling the elements created above in makeElement
    listItems.push(elem.value);
    makeElem(listItems);//pass in the listItems array
}

window.onload = function() {
  completeTasks = document.getElementById("completed-items");
  button = document.getElementById("add-item");
  newTaskField = document.getElementById("new-task-field");
  button.addEventListener("click", function(){
    addItem(newTaskField);
    newTaskField.value = "";
    
  });
};