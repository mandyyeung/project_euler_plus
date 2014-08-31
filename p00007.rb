# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#
# What is the 10 001st prime number?

require 'prime'

def nth_prime(num)
  Prime.first(num).last
end

#p nth_prime(6)
