// // name, age, disneyCharacter
// var me = {
//   name: "Erica",
//   favoriteColor: "Blue",
//   disneyCharacter: "Jasmine"
//   hiya: sayHello
//   disney: whatsmyCharacter
//   // hiya : function() {
//   //   return "Hello, I'm " + this.name;
//   // }
// }

// function sayHello() {
//   return "Hello, I'm" + this.name;
//   // return "HELLO";
// }

// // this keyword in JS refers to
// for (var currentKey in me) {
//   console.log(key, me[key]);
// }

// function whatsmyCharacter() {
//   return "I am similar to " + this.disneyCharacter
// }

var bloopy = {
  name: "Shmoopy",
  onTree: false,
  speak: function() {
    return "Hello, I am " + this.name;
  },
  climb: function() {
    this.onTree = true;
  }
}

var shmoopy = {
  name: "Shmoopy",
  onTree: false,
  speak: function() {
    return "Hello, I am " + this.name;
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

var shmoopy = new Monkey("Shmoopy");
var bloopy = new Monkey("Bloopy");

