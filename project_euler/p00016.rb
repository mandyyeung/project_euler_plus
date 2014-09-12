# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
#
# What is the sum of the digits of the number 2^1000?

def power_digit_sum(power)
  product = 2**(power)
  product.to_s.split('').inject(0) do |sum, num|
    sum += num.to_i
    sum
  end
end

# power_digit_sum(1_000) => 1366
