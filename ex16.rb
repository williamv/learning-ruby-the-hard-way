#use the first argument passed after invoking the file to know what to overwrite
filename = ARGV.first
script = $0

#Use the file name to confirm the operation.
puts "We're going to erase #{filename}."
#Use the CL functionality to exit the current operation
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

print "So, what will it be? "
#Use the users input, not the file input, to dictate the command
STDIN.gets

puts "Opening the file..."
#Open the file in "write" mode
target = File.open(filename, 'w')

#Empties the file
puts "Truncating the file. Goodbye!"
target.truncate(target.size)

puts "Now I'm going to ask you for three lines."
#Asks the users for three variables to be stored for each line
print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."
#Writes the lines, followed by newlines
target.write(line1 + "\n" + line2 + "\n" + line3)

#Closes the file
puts "And finally, we close it."
target.close()

