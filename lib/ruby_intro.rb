# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.reduce(0, :+)
end

def max_2_sum arr
  sum(arr.sort{ |x,y| y <=> x }.slice(0,2).to_a)
end


#0. Define a method `sum_to_n?(array, n)` that takes an array of integers and 
#an additional integer, n, as arguments and returns true if any two elements in 
# the array of integers sum to n. `sum_to_n?([], n)` should return false for any
#value of n, by definition. Run associated tests 
# via:  `$ rspec spec/part1_spec.rb:42`

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.each_with_index { |x,i| 
    arr.each_with_index { |y,j| 
       return true if i != j  && x+y == n
    }
  }
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  (/\A[^AEIOU[^[:alpha:]]]/i =~ s) != nil
end
#0. Define a method `binary_multiple_of_4?(s)` that takes a string and returns 
# true if the string represents a binary number that is a multiple of 4. 
# NOTE: be sure it returns false if the string is not a valid binary number!  
#Run associated tests via:  
# `$ rspec -e '#binary_multiple_of_4?' spec/part2_spec.rb`

def binary_multiple_of_4? s
  # YOUR CODE HERE
  /^[01]*00$|^0$/ =~s
end

# Part 3

class BookInStock
  
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    
    raise ArgumentError.new('isbn cannot be empty') if isbn.empty?
    raise ArgumentError.new('price must be >0') if price <= 0
    
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    '$%0.2f' % price
  end
  
end


@book = BookInStock.new('isbn1', 33.8)
puts @book.price_as_string