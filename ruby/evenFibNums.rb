#https://projecteuler.net/problem=2
#Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

#1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

#By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

load 'fibonacci_mod.rb'

class Problem_solver
  def initialize
    @fib_array = [0]
    @top_fib = 0
    @final_sum = 0
    @top_place = 0
  end

  # below solution does not work
  def calc_loop
    until @top_fib >= 4_000_000
      a, b = Fibonacci.fast_double_fib(@top_place)
      if a % 2 == 0
        puts 'a found even'
        p a
        @final_sum += a
        @top_fib = b
        @top_place += 1
      else
        puts 'not found even'
        p a
        @top_fib = a
        @top_place += 1
      end
    end
    end_output
  end

  def end_output
    p 'final sum of evens'
    p @final_sum
    p 'is correct?'
    p @final_sum == 4613732
  end


  def brute_force
    until @fib_array[-1] > 4_000_000
      a, b = Fibonacci.fast_double_fib(@top_place)
      @fib_array << a
      @fib_array << b
      @top_fib = a
      @top_place += 1
      @fib_array
      brute_force
    end
    p @fib_array = @fib_array.uniq
    @final_sum = array_filter.reduce(:+)
    end_output
  end

  def array_filter
    even_array = []
    @fib_array.each do |fib_num|
      if fib_num % 2 == 0
        # p fib_num
        even_array << fib_num
      end
    end
    return even_array
  end

end

problem_solver = Problem_solver.new
problem_solver.calc_loop
# problem_solver.brute_force

