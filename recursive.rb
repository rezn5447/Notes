	
def factorial(n)
  if n == 0
    1
  else
    n * factorial(n-1)
  end
end




# Define a recursive function that takes an argument n 
# and prints "n bottles of beer on the wall", 
# "(n-1) bottles of beer on the wall", ..., 
# "no more bottles of beer on the wall".


####    Notes   #####
<- Notice how the method jumps back up the 
	stack calls and assigns values to the variables or something like that ->
	
def bottles(m)
  if m == 0 
	puts "No more bottles of beer on the wall"
  else 
	puts "#{m} bottles of beer on the wall"
	bottles(m-1)
 end
end
bottles(10)
# This goes 0 to 10 if we switched the lines 27 and 28 it would go 10 to 0 because of the assignment of m



#Define a recursive function that takes an argument n and 
# returns the fibonacci value of that position. 
# The fibonacci sequence is 0, 1, 1, 2, 3, 5, 8, 13, 21... 
# So fib(5) should return 5 and fib(6) should return 8.

#Notes

def fib(n)
  return 0 if n == 0
  return 1 if n == 1

  [fib(n-1),fib(n-2)].reduce(:+)
	
end

fib(5)
