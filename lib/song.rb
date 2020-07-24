require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@count += 1
    @@artists << artist
  end

  def self.artists
    @@artists = @@artists.uniq
  end

  def self.genres
    @@genres = @@genres.uniq
  end

  def self.genre_count
    genre_hash = Hash.new(0)
    @@genres.each {|g| genre_hash[g] += 1}
    genre_hash
  end

  def self.artist_count
    artist_hash = Hash.new(0)
    @@artists.each {|a| artist_hash[a] += 1}
    artist_hash
  end

  def self.count
    @@count
  end



end
