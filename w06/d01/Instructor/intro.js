window.onload = console.log( "Loaded!" );

/*
 * A mock library of javascript math functions
 */

function add( val1, val2 ){
  return (val1 + val2);
}
function sub( val1, val2 ){
  return (val1 - val2);
}
function mul( val1, val2 ){
  return (val1 * val2);
}
function div( val1, val2 ){
  return (val1 / val2);
}
function mod( val1, val2 ){
  return (val1 % val2);
}
function exp( val1, val2 ){
  if( val2 == 0 ){
    return 1;
  }
  var result = val1;
  for( var i = 1; i < val2; i++ ){
    result = result * val1
  }
  return result;
}
function sqr( val ){
  return exp( val, 2 );
}

/* cheap square root */
function srt( val ){
  return Math.sqrt( val );
}

/* hypotenuse via pythagorean theorem */
function hypotenuse( arr1, arr2 ){
  /* arr[ x, y ] */
  var xDistance = arr1[0] - arr2[0];
  var yDistance = arr1[1] - arr2[1];

  return srt( sqr(xDistance) + sqr(yDistance) );
}

/* quadratic formula */
function quadratic( a, b, c ){
  var delta = sqr(b) - 4 * a * c;
  console.log( delta );
  if( delta < 0 ){
    return null;
  }else if (delta === 0){
    return [(-b / (2 * a))];
  }else {
    var first = ((-b + delta)/ (2 * a));
    var second = ((-b - delta)/ (2 * a));
    return [first, second];
  }
}

/* factorial via recursion */
function factorial( val ){
  console.log( val );
  if( val <= 1 ){
    return 1;
  } else {
    console.log( "?" + val )
    return (val * factorial(val - 1));
  }
}

/* modulo without Math or the modulo operator */
function modulo_sans_math( numerator, denominator ){
  //do the simple math
  var result = numerator/denominator;

  //cast as string
  result = result.toString();

  //split at '.'
  result = result.split('.');

  //cast as integer
  result = parseInt(result[0]);

  //multiply by denom and subract from num
  result = numerator - (result * denominator);
  return result;
}

/* square root without Math */
function sqroot_sans_math( val ){
  var result = val.toString().split('.');
  if( !result[1] ){   //nothing after the decimal
    result.push( 0 ); //add something after the decimal
  }

  //find the precision of the current value
  if( result[1].length > 15 ){
    return result;
  }



  return result;
}