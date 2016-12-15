class Song
  attr_reader :name, :artist, :genre

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
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    g_c = {}
    @@genres.each do |k, v|
      g_c[k] ||= 0
      g_c[k] += 1
    end
    g_c
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |k, v|
      artist_hash[k] ||= 0
      artist_hash[k] += 1
    end
    artist_hash
  end
end
