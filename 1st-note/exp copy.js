// Generated by CoffeeScript 1.7.1
(function() {
  var a, cube, e, odd;

  a = (function(_this) {
    return function(b) {
      return b;
    };
  })(this);

  console.log(a('a'));

  e = function(f) {
    return f;
  };

  console.log(e('g'));

  console.log('a', 'b');

  cube = function(num) {
    return Math.pow(num, 3);
  };

  odd = function(num) {
    return num % 2 === 1;
  };

  odd = function(num) {
    if (typeof num !== 'number') {
      throw "" + num + " is not a number";
    }
    if (num !== Math.round(num)) {
      throw "" + num + " is not an integer";
    }
    if (!(num > 0)) {
      throw "" + num + " is not positive";
    }
    return num % 2 === 1;
  };

}).call(this);