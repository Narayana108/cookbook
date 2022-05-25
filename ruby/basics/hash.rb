spells = { "arrow" => "stun", "laguna" => "damage", "omni slash" => "physical damage" }
puts spells

puts "Keys"
puts spells.keys

puts "Values"
puts spells.values

puts "Value of Key: Arrow"
puts spells["arrow"]

puts "Keys To Uppercase"
spells.each{|key,value| puts key.upcase}