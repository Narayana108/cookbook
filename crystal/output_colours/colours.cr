require "colorize"

chant = true

# There are many ways alternate ways to format text
# Colorize must be written in this format for chaining
puts "Hare Krsna".colorize.fore(:yellow).back(:blue).mode(:bold)
puts ""
# Colorize can be written like this aswell for short
puts "#{"Mantra".colorize.blue} is a sanskrit word that consists of 2 stems:"
puts "#{"Manas".colorize.magenta} means the mind."
puts "#{"Tra".colorize.magenta} means to deliver or liberate."
puts ""
puts "Hence the word #{"mantra".colorize.blue} means to #{"liberate the mind".colorize.black.on_magenta}"
puts ""
# if chant is true make green, else default
puts "Haribol".colorize(chant ? :green : :default)

# Available colours
#:default
#:black
#:red
#:green
#:yellow
#:blue
#:magenta
#:cyan
#:light_gray
#:dark_gray
#:light_red
#:light_green
#:light_yellow
#:light_blue
#:light_magenta
#:light_cyan
#:white

# Available text declarations
#:bold
#:bright
#:dim
#:underline
#:blink
#:reverse
#:hidden
