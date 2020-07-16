class Gallery
  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists
    artists = paintings.map {|painting| painting.artist}
    artists.select do |artist|
      artist != nil
    end.uniq
  end

  def artist_names
    artists.map {|artist| artist.name}
  end

  def most_expensive_painting
    ordered = paintings.sort_by{|painting| painting.price}
    ordered[-1]
  end

  def self.all
    @@all
  end
end
