# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

def multiples_of_3_or_5(max)
  multiples = []
  for i in 3...max #two dots are inclusive, three dots are not
    if i % 3 == 0 || i % 5 == 0 then multiples << i end
  end
  multiples
end

def sum_of_multiples(max)
  multiples = multiples_of_3_or_5(max)
  multiples.inject(:+)
end

sum_of_multiples(1000) #ans = 233168
