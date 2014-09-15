# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.

def is_prime?(x)
  return false if (x == 1)
  check_max = Math.sqrt(x).floor
  2.upto(check_max) do |i|
    return false if (x % i == 0)
  end
  true
end

def sum_of_primes(max)
  sum = 2
  3.step(max,2) do |i|
    sum += i if is_prime?(i)
  end
  sum
end

p sum_of_primes(2_000_000) # => 142913828922
