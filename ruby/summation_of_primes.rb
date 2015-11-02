# https://projecteuler.net/problem=10

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

def prime?(n)
  return false if n < 2
  (2..Math.sqrt(n)).none? {|num| length % num == 0}
end

def prime_summation(limit)
  sums = 0
  limit.times do |num|
      # prime?(num + 1) ? sums += num : sums += 0
      p prime(num)
  end
  return sums
end

# TESTS
def line(num)
  puts "-"*num
end

line(15)
puts "TESTS"
line(15)

puts "Prime method works for nums < 3"
puts "3 prime?: #{prime?(3) == true}"
puts "2 prime?: #{prime?(2) == true}"
puts "1 not prime?: #{prime?(1) == false}"

line(15)
puts "prime_summation method works for:"
puts "summation of 10 should == 17 : #{prime_summation(10) == 17}"
