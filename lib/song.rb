class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name =  name
    @artist = artist
    @genre = genre

    @@artists << @artist
    @@genres << @genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    if @@artists[@artist] == nil
      @@artists << @artist
    end
    return @@artists
  end

  def self.genre_count
    genre_counter = {}
    @@genres.each do |x|
      genre_counter[x] =  @@count
    end
    return genre_counter
  end

end
