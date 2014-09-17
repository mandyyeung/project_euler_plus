# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.
#
# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
#
# Evaluate the sum of all the amicable numbers under 10000.

def divisors(num)
  (1...num).select { |n| num % n == 0 }
end

def sum_of_divisors(divisors_of)
  divisors = divisors(divisors_of)
  divisors.inject(:+)
end

def amicable?(num)
  check_num = sum_of_divisors(num)
  if check_num != num
    amicable_candidate = sum_of_divisors(check_num)
    amicable_candidate == num
  else
    false
  end
end

def amicable_nums(max)
  (2..max).select { |n| amicable?(n) }
end

p amicable_nums(10_000).inject(:+) # => 31626
