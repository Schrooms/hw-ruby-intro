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

puts hello(nil)

def starts_with_consonant? s
  # YOUR CODE HERE
  return false if s.empty?
  not /\A[AEIOU[^[:alpha:]]]/i =~ s
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
