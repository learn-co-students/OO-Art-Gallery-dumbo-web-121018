class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all # returns all artists
    @@all
  end

  def find_artist
    Painting.all.select { |painting| painting.artist == self }
  end

  def galleries
    find_artist.map { |painting| painting.gallery }
  end

  def cities
    galleries.map { |gallery| gallery.city }.uniq
  end

  def self.total_experience
    self.all.inject(0) { |total, artist| total + artist.years_experience }
  end

  def self.most_prolific
    self.all.max_by { |artist| artist.years_experience }
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end


end
