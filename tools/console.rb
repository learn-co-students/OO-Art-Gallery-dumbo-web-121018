require_relative '../config/environment.rb'


kah = Artist.new("Kah", 1)
ludy = Artist.new("Ludy", 3)
jhin = Artist.new("Jhin", 100)
smeargle = Artist.new("Smeargle", 50)

g1 = Gallery.new("Museum", "NY")
g2 = Gallery.new("World", "Digital")
g3 = Gallery.new("Johto", "Hoen")
g4 = Gallery.new("Rift", "Summoner")

p1 = Painting.new("P1", 1, kah, g1)
p2 = Painting.new("P2", 1, kah, g1)
p3 = Painting.new("P3", 10, kah, g2)
p4 = Painting.new("P4", 27, kah, g4)
p5 = Painting.new("P5", 28, ludy, g4)
p6 = Painting.new("P6", 3, jhin, g3)



binding.pry

puts "Bob Ross rules."
