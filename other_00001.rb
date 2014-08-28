# Given a string of text, find all possible combinations of those letters

def combo(string)
  results = []
  string.split('').permutation.to_a.each do |array|
    results << array.join unless results.include?(array.join)
  end
  results
end

p combo("bird")
p combo("paper")
