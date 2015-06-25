// https://projecteuler.net/problem=1
// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
// Find the sum of all the multiples of 3 or 5 below 1000.

// Initial solution uses simple loop. If the number gets too big, it could take too much power.

var sumOfThreeFives = function(upperBound) {
  var finalSum = 0
  for (i=0; i < upperBound; i++) {
    if (i%3 === 0 || i%5 === 0) {
      finalSum = finalSum + i;
    }
  };
  console.log(finalSum);
}

sumOfThreeFives(1000);


// Better solution uses math!
