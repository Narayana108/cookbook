file_e = File.exists?("names.txt")

if file_e == false
    names = File.new("names.txt", "w")
    names.puts("Shadow Fiend, Slark, Earthshaker")
    names.close
else
    puts "File Exists"
end

heroes = File.open("names.txt")
heroes_data = heroes.read
heroes.close

puts heroes_data