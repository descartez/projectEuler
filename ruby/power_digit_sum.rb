# Problem 13
# https://projecteuler.net/problem=16
# 215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# What is the sum of the digits of the number 2**1000?

def power_digit_sum(digit, power)
  powered_digit = digit ** power
  split_digits = Math.log10(powered_digit).floor.downto(0).map { |i| (powered_digit / 10**i) % 10 }
  final = 0
  split_digits.each do |num|
    final += num
  end
  return final
end

p power_digit_sum(2, 1000)
