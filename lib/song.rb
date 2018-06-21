class Song
  attr_accessor :name 
  attr_accessor :artist
  attr_accessor :genre
  
  @@count = 0 
  @@genres = [] 
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre 
    @@count += 1
    @@genres.push(genre)
    @@artists.push(artist)
  end
  
  def self.count
    @@count  
  end

  def self.genres
    unique_genres = @@genres.uniq
  end
  
  def self.artists
    unique_artists = @@artists.uniq
  end
  
  def self.genre_count
    genre_hash = {}
    @@genres.each {|i| genre_hash[i] = 0}
    @@genres.each {|i| genre_hash[i] += 1}
    genre_hash
  end
  
  def self.artist_count
    artist_hash = {}
    @@artists.each {|i| artist_hash[i] = 0}
    @@artists.each {|i| artist_hash[i] += 1}
    artist_hash
  end
end