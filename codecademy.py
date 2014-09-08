def digit_sum(n):
    string = str(n)
    result = 0
    for i in range(len(string)):
      result += int(string[i])
    return result

# digit_sum(1234) => 10
# digit_sum(434) => 11

def factorial(x):
    result = 1
    for i in range(1,x+1):
        result *= i
    return result

#factorial(2) => 1*2

def is_prime(x):
    if x > 2:
        for i in range(2, (x-1)):
           if x % i == 0:
                return False
                break
        else:
            return True
    elif x == 2:
        return True
    else:
        return False

#is_prime(2) => True
#is_prime(0) => False
#is_prime(7) => True

def reverse(text):
    result = ""
    for i in range(len(text)):
        result+=(text[-i-1])
    return result

#reverse("Python!") => !nohtyP

def anti_vowel(text):
    vowels = "aeiouAEIOU"
    result = ""
    for i in range(len(text)):
        if text[i] not in vowels:
            result += text[i]
    return result

#anti_vowel("Hey You!") => Hy Y!

score = {"a": 1, "c": 3, "b": 3, "e": 1, "d": 2, "g": 2,
         "f": 4, "i": 1, "h": 4, "k": 5, "j": 8, "m": 3,
         "l": 1, "o": 1, "n": 1, "q": 10, "p": 3, "s": 1,
         "r": 1, "u": 1, "t": 1, "w": 4, "v": 4, "y": 4,
         "x": 8, "z": 10}

def scrabble_score(word):
    result = 0
    for i in word.lower():
        result += score[i]
    return result

#scrabble_score('Helix') => 15

def censor(text,word):
    text_array = text.split()
    censored = "*" * len(word)
    for index, value in enumerate(text_array):
        if value == word:
            text_array[index] = censored
    result = " ".join(text_array)
    return result

#censor("this hack is wack hack", "hack") => "this **** is wack ****"

def count(sequence, item):
    count = 0
    for i in range(len(sequence)):
        if sequence[i] == item:
            count += 1
    return count

#count([1,2,1,1], 1) => 3

def purify(list):
    result = []
    for number in list:
        if number % 2 == 0:
            result.append(number)
    return result

#purify([1,2,3]) => [2]

def product(list):
    result = 1
    for number in list:
        result *= number
    return result

#product([4, 5, 5]) => 100

def remove_duplicates(list):
    result = []
    for number in list:
        if number not in result:
            result.append(number)
    return result

#remove_duplicates([1,1,2,2]) => [1,2]

def median(list):
    length = len(list)
    list.sort()
    if length == 1:
        return list[length-1]
    elif length % 2 == 0:
        return (list[length/2] + list[(length/2)-1]) / 2.0
    else:
        return list[int(length/2)]

#median([7,12,3,1,6]) => 6
