class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count = @@count + 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count
    artists = @@artists.uniq
    hash = {}
    artists.each do |artist|
      hash[artist] = {}
      hash[artist] = @@artists.count(artist)
    end
    hash
  end

  def self.genre_count
    genres = @@genres.uniq
    hash = {}
    genres.each do |genre|
      hash[genre] = {}
      hash[genre] = @@genres.count(genre)
    end
    hash
  end

end
