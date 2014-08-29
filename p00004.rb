# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome?(number)
  num = number.to_s.split('')
  num == num.reverse
end

def largest_palindrome(digits)
  multipliers_start = 10**(digits - 1)
  multipliers_end = 10**digits - 1
  largest = 0
  multipliers_end.downto(multipliers_start) do |m1|
    multipliers_end.downto(multipliers_start) do |m2|
      product = m1 * m2
      if palindrome?(product) && product > largest
        largest = product
      end
    end
  end
  largest
end

p largest_palindrome(2) #9009
p largest_palindrome(3) #906609
