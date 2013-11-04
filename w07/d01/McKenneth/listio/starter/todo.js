window.onload = function(){
  list();
}
  var listItem, button, toDoList, content, removeItem, listed;
  var count = 0;
  
  var removeThis = function(){
    var item = toDoList.childNodes;
    var spot = document.getElementById(this.id).value;
    toDoList.removeChild(item[spot]);
  };
  
  var list = function(){
   // gets OL
   toDoList = document.getElementById("todo-items");
   // gets submit button
   button = document.getElementById("add-item");
   
  
   // click event listener for button
  button.addEventListener("click", function(){
    listItem = document.createElement("li");
    listItem.id = count;
    listed = document.createElement("div");
    removeItem = document.createElement("button");
    removeItem.id = count;
    
    removeItem.innerHTML = "REMOVE"
    removeItem.addEventListener("click", removeThis);

     content = document.getElementById("new-task-field").value;
    
    listed.innerHTML = content;
    listed.appendChild(removeItem);
    
    

    listItem.appendChild(listed);
    toDoList.appendChild(listItem);
    count++;
  });

};




