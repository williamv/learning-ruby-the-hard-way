#when running in the CL, pass the file name as a variable
input_file = ARGV[0]

#this method prints everything in the target file. The variable F is randly chosen
def print_all(f)
  puts f.read()
end

#Look at hte absolute position of the document, count in zero characters, and read from there
def rewind(f)
  f.seek(0, IO::SEEK_SET)
end

#Print out the current line count and read it out.
def print_a_line(line_count, f)
  puts "#{line_count} #{f.readline()}"
end
#Open the file that was passed in the params
current_file = File.open(input_file)

puts "First let's print the whole file:"
puts

#Dump the entire file onto the command line
print_all(current_file)

puts "Now let's rewind, kind of like a tape."
puts
#Print it again. This is a dupe of reading everythign out in the file
rewind(current_file)

puts "Let's print three lines:"

#Define a variable called current line as the first line
current_line = 1
print_a_line(current_line, current_file)

#Increment on the first line to the 2nd line and print it
current_line += 1
print_a_line(current_line, current_file)

#increment on the second line to the 3rd line and print it.
current_line += 1
print_a_line(current_line, current_file)


