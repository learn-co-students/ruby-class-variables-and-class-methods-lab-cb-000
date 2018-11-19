class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end

  def self.count
    return @@count
  end

  def self.artists
    return @@artists.uniq
  end

  def self.genres
    return @@genres.uniq
  end

  def self.genre_count
    @@genres.uniq.map{|genre| [genre, @@genres.count(genre)]}.to_h
  end

  def self.artist_count
    @@artists.uniq.map{|artist| [artist, @@artists.count(artist)]}.to_h
  end

end
