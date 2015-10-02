# The sum of the squares of the first ten natural numbers is,

# 1**2 + 2**2 + ... + 10**2 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)**2 = 55**2 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sum_square_diff(endpt)
  sum_square = (1..endpt).to_a.map { |e| e**2 }
  sum_square = sum_square.inject(:+)

  square_sum = (1..endpt).to_a.inject(:+)**2

  return square_sum - sum_square
end

p sum_square_diff(10) == 2640

p sum_square_diff(100)
