require 'pry'
class Song
  @@count = 0
  @@genres = []
  @@artists = []
  attr_reader :name, :genre, :artist
  def initialize(name, artist, genre)
    @@count += 1
    @@genres.push(genre)
    @@artists.push(artist)
    @name = name
    @genre = genre
    @artist = artist
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
    i = Hash.new(0)
    @@genres.each do |x|
      i[x] += 1
    end
    return i
  end
  def self.artist_count
    i = Hash.new(0)
    @@artists.each do |x|
      i[x] += 1
    end
    return i
  end
end
