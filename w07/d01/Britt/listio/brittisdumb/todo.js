// Item Object constructor
function ListItem( taskString ) {
  this.task = taskString;
  this.dateCreated = getTodaysDate();
  // this.dateCompleted = new Date("IDK");
};

// List Object constructor
function ToDoList( name ) {
  this.name = name;
  this.list = [];
};

ToDoList.prototype.addItem = function( itemString ) {
  var newItem = new ListItem( itemString );
  this.list.push( newItem );
  return newItem;
};

ToDoList.prototype.deleteItem = function( item ) {
  var index = this.list.indexOf( item );
  if ( index !== -1 ) {
    this.list.splice( index, 1 );
  } else {
    return "No matching item found."
  };
  return item;
};

ToDoList.prototype.completedItem = function( item, completedList ) {
  var completedOrderedList = document.getElementById( "completed-items" );
  var index = this.list.indexOf( item );
  if ( index !== -1 ) {
    this.list.splice( index, 1 );
    completedList.addItem( item );
    completedList.createAndAppendListElement( item, "items", completedOrderedList );
  };
};

ToDoList.prototype.initialize = function() {
  this.createButton = document.getElementById( "add-item" );
  this.textFieldInput = document.getElementById( "new-task-field" );
  this.toDoOrderedList = document.getElementById( "todo-items" );
  var self = this

  this.createButton.addEventListener( 'click', function(){
    var itemString = self.textFieldInput.value;
    var item = self.addItem( itemString );

    self.createAndAppendListElement( item, "items", self.toDoOrderedList );

    self.textFieldInput.value = "";
  } );
};

ToDoList.prototype.createAndAppendListElement = function( itemObject, elementClass, parentElement ){
  var self = this

  var li = document.createElement( "li" );

  var itemsDiv = document.createElement( "div" );
  itemsDiv.classList.add( elementClass );
  itemsDiv.innerHTML = itemObject.task;

  var actionsDiv = document.createElement( "div" );
  actionsDiv.classList.add( "actions" );

  var metaDataSpan = document.createElement( "span" );
  metaDataSpan.innerHTML = "Created on " + itemObject.dateCreated;
  metaDataSpan.classList.add( "meta-data" );

  if (self.name != "Completed") {
    var completedButton = document.createElement( "button" );
    completedButton.innerHTML = "completed";
    completedButton.classList.add( "completed" );

    completedButton.addEventListener( 'click', function(){
      self.completedItem( itemObject, window.todo );
      li.parentNode.removeChild( li );
    } );
  } else {
    return undefined;
  };

  var deleteButton = document.createElement( "button" );
  deleteButton.innerHTML = "delete";
  deleteButton.classList.add( "delete" );

  deleteButton.addEventListener( 'click', function(){
    self.deleteItem( itemObject );
    li.parentNode.removeChild( li );
  } );

  actionsDiv.appendChild( metaDataSpan );
  if (self.name != "Completed") {
    actionsDiv.appendChild( completedButton );
  } else {
    return undefined;
  };
  actionsDiv.appendChild( deleteButton );
  itemsDiv.appendChild( actionsDiv );
  li.appendChild( itemsDiv );
  parentElement.appendChild( li );
};

// helper functions
function getTodaysDate() {
  var today = new Date();
  return today.toLocaleDateString();
};

window.todo = new ToDoList( "Unfinished" );
window.done = new ToDoList( "Completed" );

window.onload = function(){
  this.todo.initialize();
};