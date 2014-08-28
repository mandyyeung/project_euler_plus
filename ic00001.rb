# You're working with an intern that keeps coming to you with JavaScript code that won't run because the braces, brackets, and parentheses are off. To save you both some time, you decide to write a braces/brackets/parentheses validator.
# Let's say:
# '(', '{', '[' are called "openers."
# ')', '}', ']' are called "closers."
# Write an efficient function that tells us whether or not an input string's openers and closers are properly nested.
# Examples:
# "{ [ ] ( ) }" should return true
# "{ [ ( ] ) }" should return false
# "{ [ }" should return false


def closed?(string)
  openers_and_closers =
    { '('=>')',
      '{'=>'}',
      '['=>']' }

  openers = openers_and_closers.keys
  closers = openers_and_closers.values

  string_elements = string.delete(' ').split('')
  openers_array = []

  string_elements.each do |element|
    if openers.include?(element)
      openers_array << element
    elsif closers.include?(element)
      element == openers_and_closers[openers_array.last] ? openers_array.pop : false
    end
  end

  openers_array.empty?
end

p closed?("{ [ ] ( ) }") #true
p closed?("{ [ ( ] ) }") #false
p closed?("{ [ }") #false
