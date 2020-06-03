arr = ["This", "is", "a", "ruby", "array"]

puts "For Loop"
for i in arr
    puts "#{i}"
end

puts "Each Loop"
arr.each do |i|
    puts "#{i}"
end

puts "Upper Case Map"
puts arr.map {|str| str.upcase}

arr = [1, 2, 3, 4]
puts arr.map {|n| n+1}