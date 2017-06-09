require "byebug"
require 'terminal-table'


def is_prime?(num)
  return false if num < 2
  return true if num == 2

  i = 2
  until i == num
    return false if (num % i).zero?
    i += 1
  end

  true
end

def primes(n)
  primes = []
  i = 2

  until primes.length == n
    primes << i if is_prime?(i)
    i += 1
  end

  primes
end

def generate_table(n)
  p_table = Array.new(n) { Array.new }
  p_table.unshift(primes(n).unshift(nil)) # unshift nil for an empty space
  p_table.each_with_index do |arr, idx|
    next if idx == 0 # skip empty space
    arr.push(primes_table[0][idx])
  end

end

def print_table(array)
  table =
    Terminal::Table.new :title => "Prime Number Multiplication Table",
                        :headings => array.shift,
                        :rows => array
  puts table
end
