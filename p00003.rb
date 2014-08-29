# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

def prime_factors(num)
  return [] if num == 1
  factor = (2..num).find {|factor| num % factor == 0}
  [factor] + prime_factors(num / factor)
end

p prime_factors(600851475143).max #[71, 839, 1471, 6857]
