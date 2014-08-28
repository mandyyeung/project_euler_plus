# Write a function to reverse an array of characters in place.
# "In place" means "without creating a new string in memory."

def reverse(array)
  reverse = []
  for i in 1..(array.length) do
    reverse << array[-i]
  end
  reverse
end

p reverse(["a","b","c"])
