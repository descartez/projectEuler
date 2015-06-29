# c/o Xanderstrike, modified to be a module for better use,
# https://gist.github.com/XanderStrike/9798d68e0dc7b2289c9c

module Fibonacci
# === stupid ===
  def self.recursive_fib(n)
    n <= 1 ? n : recursive_fib(n-1) + recursive_fib(n-2);
  end

  # === good ===
  def self.linear_fib(n)
    (2..n-1).each_with_object([1, 1]) { |i, arr| arr << arr[-1] + arr[-2] }.last
  end


  # === gooder ===
  def self.linear_cached_fib(n)
    cache = [1, 1]
    (2..n-1).each do |i|
      a = cache[0] + cache[1]
      cache = [cache[1], a]
    end
    cache
  end

  # === stupid good ===
  def self.fast_double_fib(n)
    if n == 0
      return 0, 1
    else
      a, b = fast_double_fib(n / 2)
      c = a * (b * 2 - a)
      d = a * a + b * b
      d = a * a + b * b
      if n % 2 == 0
        return c, d
      else
        return d, c + d
      end
    end
  end

end
