people = 16
cars = 10
buses = 15

if cars > people
  puts "We should take the cars"
elsif cars < people
  puts "We should not take the cars"
else
  puts "We can't decide"
end

if buses > cars
  puts "That's too many buses"
elsif buses < cars
  puts "Maybe we could take the buses"
else
  puts "We still can't decide"
end

if people > buses
  puts "Alright, let's just take the buses."
else 
  puts "Fine, lets stay home then"
end