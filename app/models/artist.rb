class Artist
  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    all_galleries = paintings.map {|painting| painting.gallery}
    all_galleries.uniq
  end

  def cities
    all_cities = galleries.map {|gallery| gallery.city}
    all_cities.uniq
  end

  def self.total_experience
    sum = 0
    @@all.each {|artist| sum += artist.years_experience}
    sum
  end

  # def self.most_prolific
  #   avg = {}
  #   @@all.each do |artist|
  #     avg[artist] = artist.paintings.count.fdiv(artist.years_experience)
  #   end
  #   arr = avg.sort_by{ |k,v| v }
  #   arr.each do |sub_arr|
  #     sub_arr.each do |k,v|
  #       return k
  #     end
  #   end
  # end
  #
  # OR ==>

  def self.most_prolific
    avg = {}
      @@all.each do |artist|
        avg[artist] = artist.paintings.count.fdiv(artist.years_experience)
      end
      arr = avg.max_by{ |k,v| v }
      arr[0]
  end


  def create_painting(title,price,gallery)
    Painting.new(title,price,self,gallery)
  end

  def self.all
    @@all
  end
end
