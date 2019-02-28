class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings 
    Painting.all.select do | painting |
      painting.gallery = self 
      end
  end

  def artists
    self.paintings.map do |painting|  #call the painting method above, so we get all the paintings in this gallery
      painting.artist  # return artist instance
    end


    def artist_names
      self.paintings.map do |painting|
        painting.artist.name  # return artist name
      end
    end
 
  def most_expensive_painting
    painting_price = 0
    most_expensive_painting = nil
    self.paintings.map do |painting|
      if painting.price > painting_price
         painting_price = painting_price
         most_expensive_painting = painting
    end
    most_expensive_painting
  end

end
