class Song

  attr_reader :name, :artist, :genre
  @@genre_count = {}
  @@artist_count = {}
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(song, artist, genre)
    @name = song
    @artist = artist
    @genre = genre
    @@genre_count.keys.include?(genre) ? @@genre_count[genre] += 1  : @@genre_count[genre] = 1
    @@artist_count.keys.include?(artist) ? @@artist_count[artist] += 1  : @@artist_count[artist] = 1
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.genre_count
    @@genre_count
  end

  def self.genres
    @@genre_count.keys
  end

  def self.artist_count
    @@artist_count
  end

  def self.artists
    @@artist_count.keys
  end

  def self.count
    @@count
  end

end
