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

  def self.genre_count
    genre_count = {}
    self.genres.each {|genre| genre_count[genre] = @@genres.count(genre)}
    genre_count
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    artist_count = {}
    self.artists.each {|artist| artist_count[artist] = @@artists.count(artist)}
    artist_count
  end

end
