name = 'Zed A. Shaw'
age = 35 #not a lie
height = 74 #inches
weight = 180.0 #lbs
kilogram = weight * 0.45
centimeter = height * 2.54
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'

puts "Lets talk about %s." % name
puts "He's %d inches tall and %d centimeters tall" % [height, centimeter]
puts "He's %d pounds heavy. That's %d kilograms" % [weight,kilogram]
puts "Actually that's not too heavy."
puts "He's got %s eyes and %s hair." %[eyes, hair]
puts "His teeth are usually %s depending on the coffee." % teeth

puts "If I add %d, %d, and %d I get %d." % [age,height,weight,age + height + weight]