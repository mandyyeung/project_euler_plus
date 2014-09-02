# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.

def is_prime?(num)
  !(3...num).to_a.find_index {|n| num % n == 0}
end

def sum_of_primes(max_num)
  sum = 2
  (3..max_num).step(2) do |num|
    sum += num if is_prime?(num)
  end
  sum
end

p sum_of_primes(2_000_000)
