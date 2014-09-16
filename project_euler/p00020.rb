# n! means n × (n − 1) × ... × 3 × 2 × 1
#
# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
#
# Find the sum of the digits in the number 100!

def factorial_sum(n)
  product = factorial(n)
  product.to_s.split('').inject(0) do |sum, num|
    sum += num.to_i
    sum
  end
end

def factorial(n)
  (1..n).inject(1) do |product, num|
    product *= num
    product
  end
end

p factorial_sum(100) # => 648
