class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    hist_hash = {}
    @@genres.each {|genre| hist_hash[genre] ? hist_hash[genre] += 1 : hist_hash[genre] = 1}
    hist_hash
  end

  def self.artist_count
    hist_hash = {}
    @@artists.each {|artist| hist_hash[artist] ? hist_hash[artist] += 1 : hist_hash[artist] = 1}
    hist_hash
  end

end
