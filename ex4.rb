cars = 100 #creating a variable called cars and assigning it the value 100
space_in_a_car = 4 #creating a space variable and assigning it a floating point number of 4
drivers = 30 #drivers variable assigned the value  30
passengers = 90 #passengers variable assigned the value 90
cars_not_driven = cars - drivers #variable equals the difference between the number of cars and the number of drivers
cars_driven = drivers #new variable cars_driven that's always equal to the number of drivers
carpool_capacity = cars_driven * space_in_a_car #variable equal to the number of cars(num drivers) and space_in a car
average_passengers_per_car = passengers / cars_driven #variable averaging out people per available car

puts "There are #{cars} cars available" #shows a sentence that brings the variable #cars into the equation
puts "There are only #{drivers} drivers available" #sentence that uses the drivers variable
puts "There will be #{cars_not_driven} empty cars today" #uses cars not driven as the number of empty cars
puts "We can transport #{carpool_capacity} people today." #open space limited by drivers
puts "We have #{passengers} passengers to carpool today" #total count of passengers
puts "We need to put about #{average_passengers_per_car} in each car to make it" #uses last variable

