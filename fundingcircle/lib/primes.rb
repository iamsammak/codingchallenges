require "byebug"
require 'terminal-table'

def is_prime?(num)
  return false if num < 2

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
  p_table = Array.new(n) { [] }
  # unshift nil for an empty space
  p_table.unshift(primes(n).unshift(nil))

  # create first col
  p_table.each_with_index do |arr, idx|
    next if idx == 0 # skip empty space
    arr.push(p_table[0][idx])
  end

  # seed the table
  (1...p_table.length).each do |col|
    (col...p_table.length).each do |row|
      product = p_table[0][col] * p_table[row][0]
      p_table[row][col] = product
      p_table[col][row] = product
    end
  end
  p_table
end

def print_table(array)
  table =
    Terminal::Table.new title: "Prime Number Multiplication Table",
                        headings: array.shift,
                        rows: array
  puts table
end

if __FILE__ == $PROGRAM_NAME
  puts "Generating Prime Number Multiplication Table"
  puts "How many prime numbers would you like?"
  answer = gets.chomp.to_i
  print_table(generate_table(answer))
end
