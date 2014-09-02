# The sum of the squares of the first ten natural numbers is,
#
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
#
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sum_of_squares(max_num)
  (1..max_num).to_a.inject do |sum,num|
    sum+=num**2
    sum
  end
end

def square_of_sum(max_num)
  ((1..max_num).to_a.inject(:+))**2
end

def difference(max_num)
  square_of_sum(max_num) - sum_of_squares(max_num)
end

difference(100) #25164150
