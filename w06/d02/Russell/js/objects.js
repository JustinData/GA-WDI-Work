var me = {
  name: "Russell",
  favoriteColor: "pewter",
  disneyCharacter: "Rafiki",
  hiya: sayHello,
  character: sayDisney,
  }



function sayHello() {
  return "HELLO! I'm " + this.name;

}

function sayDisney() {
  return "Hello! I'm a lot like" + this.disneyCharacter;

}

for (var key in me) {
  console.log(key, me[key]);
}

function forEachObj(obj, action) {
 for (var key in obj) {
  action(key, obj[key]);
 }

}

function keys(obj) {
  var keys = [];
  for (var key in obj) {
    keys.push(key);
  }
  return keys;
}


var shmoopy = {
  name: "Shmoopy",
  onTree: false,
  speak: function(){
    return "Hello, I am" + this.name;
  },
  climb: function() {
    this.onTree = true;
  }
}

var bloopy = {
  name: "Bloopy",
  onTree: false,
  speak: function(){
    return "Hello, I am" + this.name;
  },
  climb: function() {
    this.onTree = true;
  }
}

function Monkey(name) {
  this.name = name;
  this.onTree = false;
}

Monkey.prototype.speak = function() {
  return "Hello, I am" + this.name;
}

Monkey.prototype.climb = function() {
  return this.onTree = true;
}








