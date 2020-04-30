puts "Namaste! Please chant along with us!"
puts "Enter a chant a sacred chant that you like"
print "> "
# 'gets' is a method to get user input
user_input = gets

# Exit script if user cancels with CTRL+C/D
exit if user_input.nil? 

default_chant = "Hare Krsna Hare Krsna Krsna Krsna Hare Hare, \
                 Hare Rama Hare Rama Rama Rama Hare Hare"

# If user input is nil then use default chant
chant = user_input.presence || default_chant

puts "We are all chanting: #{chant}"
