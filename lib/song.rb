class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist 
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end 
  
  def self.count 
    @@count
  end 
  
  def self.genres 
    @@genres.uniq
  end 
  
  def self.artists
    @@artists.uniq 
  end 
  
  def self.genre_count
    @@genres.inject({}) do |count, genre|
      count[genre] = (count[genre] || 0) + 1 
      count 
    end 
  end 
  
  def self.artist_count
    @@artists.inject({}) do |count, artist|
      count[artist] = (count[artist] || 0) + 1 
      count 
    end 
  end 
end 