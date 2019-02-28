require_relative '../config/environment.rb'


painting1 = Painting.new("A Happy Landscape", 3000, "Bob Ross", "Houston Art Gallery")
painting2 = Painting.new("A Sad Landscape", 1000, "Bob Ross", "New York Art Gallery")
painting3 = Painting.new("A Moody Landscape", 3000, "Bob Ross", "San Francisco Art Gallery")

gallery = Gallery.new("Houston Art Gallery", "Houston")

binding.pry

puts "Bob Ross rules."
