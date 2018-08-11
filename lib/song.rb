class Song
  attr_accessor :name
  attr_reader :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def artist=(artist)
    @artist = artist
    @@artists << artist # if !!@@artists.include?(artist)
  end

  def genre=(genre)
    @genre = genre
    @@genres << genre
  end

  def initialize(name, artist, genre)
    @name = name
    self.artist = artist
    self.genre = genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    unique_artists = []
    @@artists.each do |artist|
      unique_artists << artist if !unique_artists.include?(artist)
    end
    unique_artists
  end

  def self.genres
    unique_genres = []
    @@genres.each do |genre|
      unique_genres << genre if !unique_genres.include?(genre)
    end
    unique_genres
  end

  def self.artist_count
    count = {}
    self.artists.each do |artist|
      count[artist] = @@artists.count(artist)
    end
    count
  end

  def self.genre_count
    count = {}
    self.genres.each do |genre|
      count[genre] = @@genres.count(genre)
    end
    count
  end
end
