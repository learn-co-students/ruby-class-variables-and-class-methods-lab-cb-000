class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
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
    count_hash = {}
    @@genres.each do |genre|
      count_hash.keys.include?(genre) ? count_hash[genre] += 1 : count_hash[genre] = 1
    end
    count_hash
  end

  def self.artist_count
    count_hash = {}
    @@artists.each do |artist|
      count_hash.keys.include?(artist) ? count_hash[artist] += 1 : count_hash[artist] = 1
    end
    count_hash
  end
end
