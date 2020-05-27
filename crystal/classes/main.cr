class Book

  def initialize(@title : String, @author : String)
    # there are instance variables
    @title = title
    @author = author
    @category = "vedas" # Default book attribute
  end

  # macros for get and set methods
  getter :title
  setter :title
  getter :category
 
  # declare both getters and setters in one shot with `property`
  property :author

  # instance method
  def verse(txt)
    puts txt
  end

  # class method
  def self.verse(txt)
    puts txt
  end
end

# Define new object and add attributes
geeta = Book.new "Bhagavad Geeta", "Veda Vyasadev"

puts geeta.title
puts geeta.author
puts geeta.category
geeta.verse("Words that do not cause distress, are truthful, inoffensive, and beneficial, as well as the regular recitation of the Vedic scriptures—these are declared as the austerity of speech.")
Book.verse("Serenity of thought, gentleness, silence, self-control, and purity of purpose—all these are declared as the austerity of the mind.")
