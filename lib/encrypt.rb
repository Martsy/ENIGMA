require 'date'
require './lib/enigma'

# read input file
input_filename      = ARVG[0]
unencrypted_message = File.read input_filename

# encryption
enigma = Enigma.new(unencrypted_message, key, date)
key    = Enigma.random_key # "82648"
date   = Date.today.strftime(%d%m%y) # 240818 for testing purposes

# write ouput file
output_filename = ARVG[1]
encrypted_message = enigma.encrypt
File.write output_filename, encrypted_message

# print the file, key and date
puts "Created #{output_filename} with the key #{key} and date #{date}"
