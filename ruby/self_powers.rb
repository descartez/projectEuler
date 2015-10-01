# The series, 1**1 + 2**2 + 3**3 + ... + 10**10 = 10405071317.

# Find the last ten digits of the series, 1**1 + 2**2 + 3**3 + ... + 1000**1000.




  def nth_power(num)
    return num**num
  end

  def powers_generator(endpt, power, sum)
    line = "-" * 12
    until power == endpt
      power += 1
      sum += nth_power(power)
      puts "power: #{power}"
      puts "sum: #{sum}"
      puts line
      powers_generator(endpt, power, sum)
    end
  end

powers_generator(10, 0, 0)
