// ## Part 1 - Geometry

// Do the following in a file called `geometry.js`

// #### Rectangles

// Given the following a `Rectangle` object like the one below, write the following functions:

// * isSquare - Returns whether the rectangle is a square or not
// * area - Calculates the area of the rectangle
// * perimeter - Calculates the perimeter of the rectangle

// ```
function Rectangle(length, width) {
  this.length = length;
  this.width = width;
}

Rectangle.prototype.isSquare = function() {
  if (this.length == this.width) {
  return  "This is a square.";
} else { 
  return "This is not a square."

}
};

Rectangle.prototype.area = function() {
  return this.length * this.width;
};

Rectangle.prototype.perimeter = function() {
  return (this.length * 2) + (this.width * 2);
};

var rec1 = new Rectangle(20, 10);
var rec2 = new Rectangle(20, 20);

// ```
// Create a few rectangles with different lengths and widths to test out your functions

// #### Triangles

// Given the following a `Triangle` object like the one below, write the following functions:

// * isEquilateral - [Returns whether the triangle is equilateral or not](http://en.wikipedia.org/wiki/Equilateral_triangle)
// * isIsosceles - [Returns whether the triangle is isosceles or not](http://en.wikipedia.org/wiki/Isosceles_triangle#By_relative_lengths_of_sides)
// * area - [Calculates the area of the Triangle](http://en.wikipedia.org/wiki/Heron%27s_formula)
// * isObtuse - [Returns whether the triangle is obtuse or not](http://en.wikipedia.org/wiki/Isosceles_triangle#By_internal_angles)

// ```
function Triangle(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;
}

Triangle.prototype.isEquilateral = function() {
  if ( this.sideA == this.sideB && this.sideA == this.sideC ) {
    return "This is an equilateral triangle.";
  } else { 
    return "This is not an equilateral triangle;"
  }
};

Triangle.prototype.isIsosceles = function() {
  if ( this.sideA == this.sideB && this.sideA != this.sideC ) {
    return "This is an isosceles triangle.";
  } else { 
    return "This is not an isosceles triangle;"
  }
};


// Triangle.prototype.area = function() {
//   s = ((this.sideA + this.sideB + this.sideC) / 2);
//   (Math.sqrt(s((s-sideA)(s-sideB)(s-sideC))));
// } 


// Triangle.prototype.isObtuse = function() {
//   length_array = [];
//   length_array = [sideA, sideB, sideC];
//   length_array.sort();
//   if ( (length_array[2])**2 ) > ((length_array[1]) + (length_array[0]))**2) ) {
//       return "This is an obtuse triangle.";
//   } else { 
//     return "This is not an obtuse triangle;"
//   }
// };



// ```
// Create a few triangles with different side lengths to test out your functions

var tri1 = new Triangle(2, 2, 3);
var tri2 = new Triangle(2, 2, 2);




