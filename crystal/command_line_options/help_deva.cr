require "option_parser"

devatas = [
  "Vishnu",
  "Lakshmi",
  "Ganesh",
  "Shiva",
  "Saraswati"
]

shout = false
person = ""

# Command line options
OptionParser.parse do |parser|
  parser.banner = "Welcome to Narayana's app"

  parser.on "-v", "--version", "show version" do
    puts "version 1.0"
    exit
  end

  parser.on "-h", "--help", "show help" do
    puts parser
    exit
  end

  parser.on "-d", "--devatas", "list devatas" do
    shout = true
  end

  parser.on "-p", "--pray=<your name>", "receive blessings" do |name|
    person = name
  end

  parser.missing_option do |option_flag|
    STDERR.puts "ERROR #{option_flag} is missing something."
    STDERR.puts parser
    exit(1)
  end

  parser.invalid_option do |option_flag|
    STDERR.puts "ERROR: #{option_flag} is not a valid option."
    STDERR.puts parser
    exit(1)
  end

end

# Print list of devatas
devas = devatas
devas = devatas.map &.upcase if shout

puts ""
puts "Deva's"
puts "=========="
devas.each do |deva|
  puts deva
end

# Print prayer
unless person.empty?
  puts ""
  puts "#{person} is being blessed by #{devatas.sample}"
end
