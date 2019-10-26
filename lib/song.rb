class Song

  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}
  @@count = 0
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre unless @@genres.include?(genre)
    @@artists << artist unless @@artists.include?(artist)
    @@genre_count[genre] ? @@genre_count[genre] += 1 : @@genre_count[genre] = 1
    @@artist_count[artist] ? @@artist_count[artist] += 1 : @@artist_count[artist] = 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists
  end

  def self.genres
    @@genres
  end

  def self.genre_count
    @@genre_count
  end

  def self.artist_count
    @@artist_count
  end

end
