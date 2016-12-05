#requesting a file from command line
input_file = ARGV.first

#creating function, when argument is defined it will read and write the file contents.
def print_all(f)
  puts f.read
end

#creating function, when argument is defined, it will move to the beginning of the file (the 0 byte)
def rewind(f)
  f.seek(0)
end

#creating function with 2 parameters. when run it runs a line count on the file, and then collects the f argument from the user.
def print_a_line(line_count, f)
  puts "#{line_count}, #{f.gets.chomp}"
end

#opens the file chosen by the user in command line (ARGV)
current_file= open(input_file)

puts "First let's print the whole file:\n"

#prints the contents of the file collected in command line
print_all(current_file)

puts "Now let's rewind, kind of like a tape."

#goes to the 0 byte of the file input in command line
rewind(current_file)

puts "Let's print these three lines:"


current_line = 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)
