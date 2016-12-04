#calling for filename from the command line
filename = ARGV.first

#requesting variable txt to open the filename when called
txt = open(filename)

#writes to the screen that your filename is here. Then it reads the file after it has opened it.
puts "Here's your file #{filename}:"
print txt.read

#This time we are using gets.chomp to request filename from the user
print "Type the filename again: "
file_again = $stdin.gets.chomp

# opening the new file name when txt_again variable called.
txt_again = open (file_again)

#reading and printing the text_again file
print txt_again.read
