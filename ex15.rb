#sets the first variable entered into the CL as the filename for the rest of the file.
filename = ARGV.first
#defines the variable prompt
prompt = "> "
#opens the file on the file system that was passed to the argument from the CL
txt = File.open(filename)
#reads the contents of the file starting with naming the file
puts "Here's your file: #{filename}"
#takes the contents of the file and dumps them to read
puts txt.read()
txt.close()

#prompt
puts "I'll also ask you to type it again:"
print prompt
#asks for another user prompt that has to be the exact file name

file_again = STDIN.gets.chomp()
#opens the file again
txt_again = File.open(file_again)
#prints the contents to the screen
puts txt_again.read()
txt_again.close()