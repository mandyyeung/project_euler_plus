# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def squared_products(num)
  squares = [1]
  i = 2
  until squares[-1] >= (num**2)
    squares << i**2
    i+=1
  end
  squares.pop
  squares
end

def pythagorean_pairs(num)
  possibilities = squared_products(num)
  pairs = []
  possibilities.combination(2).each do |array|
    pairs << array if possibilities.include?(array.inject(:+))
  end
  pairs
end

def format_triplets(num)
  pairs = pythagorean_pairs(num)
  pairs.each do |pair|
    pair << pair.inject(:+)
  end
  triplets = pairs.map do |pair|
    pair.map do |p|
      Math.sqrt(p).round(0)
    end
  end
  triplets[triplets.find_index {|triplet| triplet.inject(:+) == 1000}]
end

p format_triplets(1000) #[200, 375, 425]
