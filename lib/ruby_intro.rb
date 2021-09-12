# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
  # loop through array and add elements to sum
  sum = 0
  for num in array
    sum += num
  end
  
  return sum
end

def max_2_sum(array)
  # if empty return 0
  if array.length() == 0
      return 0
  end
  # if only one element return it
  if array.length() == 1
    return array[0]
  end
  # first just initialize to first two elements sum as minimum
  max_sum = array[0] + array[1]
  i,j = 0
  # find the largest sum of elements
  while i < array.length()
    j = 0
    while j < array.length()
      if i != j and (array[i] + array[j]) > max_sum
        max_sum = array[i] + array[j]
      end
      j += 1
    end
    i += 1
  end
  return max_sum
end

def sum_to_n?(array,n)
  # loop through array and check each combination of elements and compare to n
  i,j = 0
  while i < array.length()
    j = 0
    while j < array.length()
      # if sum of two elements equal to n return true
      if i != j and (array[i] + array[j]) == n
        return true
      end
      j += 1
    end
    i += 1
  end
  # no sum found equal to n
  return false
end


# Part 2

def hello(name)
  # concatenate and return new string
  return "Hello, " + name
end

def starts_with_consonant?(s)
  # make array of consonants and capitalize the first letter of s so we dont have to worry about lowercase
  consonants = ['B','C','D','F','G','H','J','K','L','M','N','P','Q','R','S','T','V','W','X','Y','Z']
  s= s.capitalize()
  
  # check each consonant and if first letter is one then return true
  for c in consonants
    if c == s[0]
      return true
    end
  end
  # consonant not found
  return false
end

def binary_multiple_of_4?(s)
  # if empty return false
  if s == ""
    return false
  end
  i = 0
  # check for invalid binary strings
  while i < s.length()
    if s[i] != "1" and s[i] != "0"
      return false
    end
    i += 1
  end
  # convert to integer and check if divisable by 4
  as_int = s.to_i(2)
  
  if as_int % 4 == 0 
    return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  # constructor, initialize isbn, and price
  def initialize(isbn,price)
    if isbn == "" or price <= 0
      raise ArgumentError
    end
    
    @isbn_,@price_ = isbn,price
    
  end
  #getters 
  def isbn
    @isbn_
  end
  
  def price
    @price_
  end
  # setters
  def isbn=(isbn)
    @isbn_ = isbn
  end
  
  def price=(price)
    @price_ = price
  end
  # return price as string formatted with two decimal places and a leading $
  def price_as_string
    str = ('$%.2f' % @price_)
    return str
  end
  
end