class Song

  attr_reader :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist
    Artist.all.select do |artist|
      artist.name == self
    end
  end


  def artist_name

    if self.artist
      self.artist.name
    else
      nil
    end
  end

end
