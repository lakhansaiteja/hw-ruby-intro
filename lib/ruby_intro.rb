# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.length == 0
    return 0
  end
  
  total = 0
  arr.each do |num|
    total += num
  end
  
  return total
end

def max_2_sum arr
  if arr.length == 0
    return 0
  end
  
  if arr.length == 1
    return arr[0]
  end
  
  max_1 = -2147483647;
  max_2 = -2147483647;
  
  arr.each do |num|
    if num <= max_2
      next
    end
    
    if num >= max_1
      max_2 = max_1
      max_1 = num
      next
    end
    
    max_2 = num
  end
  return max_1 + max_2
  
end

def sum_to_n? arr, n
  if arr.length < 2
    return false
  end
  
  s1 = Set.new
  
  arr.each do |num|
    diff = n - num
    if s1.include?(diff)
      return true;
    end
    s1 << num
  end
  
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  
  if !(s[0] =~ /[[:alpha:]]/)
    return false
  end
  
  s1 = Set['A','E','I','O','U','a','e','i','o','u']
  if s1.include?(s[0])
    return false
  end
  
  return true
end

def binary_multiple_of_4? s
  if s == ""
    return false
  end
  
  for i in 0...s.length
    if s[i] != "1" and s[i] != "0"
      return false
    end
  end
  
  if s.to_i(2) % 4 == 0
    return true
  end
  
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price)
    if isbn.length == 0 || price<=0
      raise(ArgumentError)
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end

  def price
    @price
  end

  def isbn=(new_isbn)
    @isbn = new_isbn
  end

  def price=(new_price)
    @price = new_price
  end

  def price_as_string
    format("$%0.2f",@price)
  end
   
end
