# The series, 1**1 + 2**2 + 3**3 + ... + 10**10 = 10405071317.

# Find the last ten digits of the series, 1**1 + 2**2 + 3**3 + ... + 1000**1000.

# BRUTE FORCE SOLUTION
  def nth_power(num)
    return num**num
  end

  def powers_generator(start, endpt, sum)
    line = "-" * 12
    if start < endpt
      start += 1
      sum += nth_power(start)
      puts "start: #{start}"
      puts "sum: \n #{sum}"
      puts line
      powers_generator(start, endpt, sum)
    else
      return sum
    end
  end
puts "TESTS"
puts "Works up to 10: #{powers_generator(0, 10, 0) == 10405071317}"
puts "Running to 1000"
p powers_generator(0, 1000, 0)


