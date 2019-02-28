class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end
  
  def paintings
    Painting.all.select do | painting | #grab all the paintings of this artist
    painting.artist = self 
    end
  end

  def galleries
    
    #2.find the gallery of the above painting
    self.paintings.map do |painting|  #call the painting method above
      painting.gallery
    end
  end

  def cities
    
     #2.find the city of the above painting
    self.galleries.map do |gallery|
      gallery.city
    end
  end

  def self.total_experience
      total_experience = 0
      @@all.map do | artist |
      total_experience += artist.years_experience
      end
      total_experience.to_i 
  end
  
  def self.most_prolific
    # paintings divided by yrs of experience
    
     current_artist_avg = 0
     most_prolific = nil
     self.all.map do |artist|   #grab all the artists and compare each one of their avg
      avg = artist.years_experience / artist.paintings.length
      if avg > current_artist_avg
        current_artist_avg = avg
        most_prolific = artist
      end
     end
     most_prolific
    #sorted_results = results.sort
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
