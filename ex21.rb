# Create a function that passes a and b as the parameters and then adds them together
def add(a, b) 
  puts "ADDING #{a} + #{b}"
  a + b
end

# New method that subtracts the given params
def subtract(a, b)
  puts "SUBTRACTING #{a} - #{b}"
  a - b
end

# New method that multiplies the passed params
def multiply(a, b)
  puts "MULTIPLYING #{a} * #{b}"
  a * b
end

# New method that divides the passed params
def divide(a, b)
  puts "DIVIDING #{a} / #{b}"
  a / b
end

puts "Lets do some math with just functions!"

#create variables that call the add method for give params
age = add(30, 5)
#create variable that call the subtraction method for given params
height = subtract(78, 4)
#create a variable that calls the multiplication method for given params
weight = multiply(90, 2)
#create a variable that calls the division method with the given params
iq = divide(100, 2)

#Show, on a new line, the calculated age, height, weight and IQ
puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

puts "Here is a puzzle."

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what}. Can you do it by hand?"