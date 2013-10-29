function Rectangle(length, width) {
  this.length = length;
  this.width = width;
}
  Rectangle.prototype.isSquare = function() {
    return this.length === this.width;
  }
  Rectangle.prototype.area = function() {
    return this.length * this.width;
  }
  Rectangle.prototype.perimeter = function() {
    return (2 * this.length) + (2 * this.width);
  }
  
function Triangle(sideA, sideB, sideC) {
  this.sideA = sideA;
  this.sideB = sideB;
  this.sideC = sideC;
}
  Triangle.prototype.isEquilateral = function() {
    return this.sideA === this.sideB && this.sideB === this.sideC;
  }
  Triangle.prototype