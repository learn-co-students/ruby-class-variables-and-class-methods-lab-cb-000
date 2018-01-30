class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    self.name = name
    self.artist = artist
    self.genre = genre
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
    genre_hist = Hash.new(0)
    @@genres.each { |genre| genre_hist[genre] += 1 }
    genre_hist
  end

  def self.artist_count
    artist_hist = Hash.new(0)
    @@artists.each { |artist| artist_hist[artist] += 1 }
    artist_hist
  end

  def self.artists
    @@artists.uniq
  end
end
