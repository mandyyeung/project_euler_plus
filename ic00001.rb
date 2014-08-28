# You're working with an intern that keeps coming to you with JavaScript code that won't run because the braces, brackets, and parentheses are off. To save you both some time, you decide to write a braces/brackets/parentheses validator.
# Let's say:
# '(', '{', '[' are called "openers."
# ')', '}', ']' are called "closers."
# Write an efficient function that tells us whether or not an input string's openers and closers are properly nested.
# Examples:
# "{ [ ] ( ) }" should return true
# "{ [ ( ] ) }" should return false
# "{ [ }" should return false
openers_and_closers =
  {
    '(':')',
    '{':'}',
    '[':']'
  }
  
#NOT DONE

def closed?(string)
  string_elements = string.split(' ')
  string_elements.inject(Hash.new(0)) do |hash, element|
    hash[element] += 1
    hash
  end
end

p closed?("{ [ ] ( ) }")
