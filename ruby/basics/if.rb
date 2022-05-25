lvl = 5
hero = "Lion"
enemy = "Myself"

if lvl < 6
    puts "You are still young"
end

if hero == "Windrunner"
    puts "You are sentinal"
elsif hero == "Lion"
    puts "You are scourge"
else 
    puts "Who are you?"
end

#ternery
# condition ? true : false

# Has ulti ?
if lvl > 6
    return true
else
    return false
end

lvl > 6 ? true : false
