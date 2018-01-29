class Song
  attr_accessor :name, :artist, :genre
  @@artist_count = {}
  @@genre_count = {}

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre

      @@genre_count.keys.include?(genre) ? @@genre_count[genre] += 1  : @@genre_count[genre] = 1
      @@artist_count.keys.include?(artist) ? @@artist_count[artist] += 1  : @@artist_count[artist] = 1

      @@artists << artist
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
    return @@genre_count
  end

  def self.artist_count
    return @@artist_count
  end

end
