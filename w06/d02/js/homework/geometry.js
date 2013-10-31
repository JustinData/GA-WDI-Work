// Rectangle

function Rectangle(length,width){
  this.length = length;
  this.width = width;
}

Rectangle.prototype.isSquare = function(){
  if this.length == this.width{
    return true;
  }
}
Rectangle.prototype.area = function(){
  return.this.length * this.width;
}
Rectangle.prototype.perimeter = function(){
  return (2 * this.length + 2 * this.width);
}

// Triangle

function Triangle(side1, side2, side3){
  this.side1 = side1;
  this.side2 = side2;
  this.side3 = side3;
}

Triangle.prototype.isEquilateral = function(){
  if (this.side1 === this.side2 === this.side3){
    return "Is Equilateral." ;}
}
  else return "Not an Equilateral";

}

Triangle.prototype.isIsosceles = function(){
  if ((this.side1 === this.side3) || this.side1 === this.side2 
  || this.side2 === this.side3)){
  return "Is Isosceles";}
  else return "Is not Isosceles"
}

Triangle.prototype.areaOf = function() {
  s = (this.side1 + this.side2 + this.side3) / 2; 
  under = s * (s - this.side1) * (s - this.side2) * (s - this.side3);
  return Math.sqrt(under);
}

Triangle.prototype.isObtuse = function() {
  side1sq = this.side1 * this.side1 
  side2sq = this.side2 * this.side2
  side3sq = this.sid3 * this.side3
  if (side1sq + side2sq) < side3sq || (side2sq + side3sq) < side1sq 
  || (side3sq + side1sq) < side2sq;
    return "This Triangle is Obtuse"
  else
    return "This triangle is not obtuse"
}





