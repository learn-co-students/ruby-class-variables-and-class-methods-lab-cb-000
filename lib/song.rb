class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    artists = @@artists.uniq
    artists
  end

  def self.genres
    genres = @@genres.uniq
    genres
  end

  def self.genre_count
    h = {}
    h.default = 0
    @@genres.each do |genre|
      h[genre] += 1
    end
    h
  end

  def self.artist_count
    h = {}
    h.default = 0
    @@artists.each do |artist|
      h[artist] += 1
    end
    h
  end
end
