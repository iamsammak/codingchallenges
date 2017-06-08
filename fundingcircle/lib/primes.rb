require "byebug"

def is_prime?(num)
  return false if num < 2

  i = 2
  until i == num/2
    return false if num % i == 0
    i += 1
  end
  true
end

#
# def primes(num)
#   ret = []
#
#   i = 0
#   while ret.length < num
#     ret << i if is_prime?(i)
#     i += 1
#   end
#
#   ret
# end
