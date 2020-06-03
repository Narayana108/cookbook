# Class Names start with Capital
class Juice
    # initialize always runs
    def initialize(fruit)
        @juice_availble = 100
        @fruit = fruit
    end

    def get_fruit
        @fruit
    end

    def squeeze
        @juice_availble -= 50
    end

    def help
        puts "I don't know what I'm doing"
    end
end

orange = Juice.new("Orange")
puts orange.get_fruit
puts "Juice Available: #{orange.squeeze}"
puts "Juice Available: #{orange.squeeze}"
orange.help

apple = Juice.new("Apple")
puts apple.get_fruit
puts "Juice Available: #{apple.squeeze}"