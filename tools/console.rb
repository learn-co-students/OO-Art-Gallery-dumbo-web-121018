require_relative '../config/environment.rb'

herb = Artist.new("Herb Lubalin", 55)
vincent = Artist.new("Vincent van Gogh", 30)

g1 = Gallery.new("Museo Gallery", "Rome")
g2 = Gallery.new("Gallerie Futura", "Boston")
g3 = Gallery.new("Clarendon Collection", "Seattle")

p1 = Painting.new("Negative in Black", 9800, herb, g3)
p2 = Painting.new("Starry Night", 860000, vincent, g1)
p3 = Painting.new("Sunflower Field", 780000, vincent, g1)
p4 = Painting.new("Disaster in Paradise", 5000, vincent, g3)
p5 = Painting.new("Calla Lily", 24000, vincent, g2)

binding.pry

puts "Bob Ross rules."
