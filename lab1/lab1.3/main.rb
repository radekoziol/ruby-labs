load 'input'

print ("Welcome to phone book application!\n")

@path = Dir.getwd + '/marshal.dump'

@contacts = Hash.new
File.open(@path, 'wb') { |f| f.write(Marshal.dump(@contacts))}
# add_to_contacts(" Ex 123,124 wife,ww " )

run
print_phone_book







