require "pry"
class Song
  @@count = 0
  @@genres = []
  @@artists = []
  @@artist_count = {}
  @@genre_count = {}
  attr_accessor :name, :artist, :genre

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

  def self.artist_count
    @@artists.each do |a|
      if @@artist_count.include?(a)
          @@artist_count[a] += 1
      else
        @@artist_count[a] = 1
      end
    end
    return @@artist_count
  end

  def self.genre_count
    @@genres.each do |a|
      if @@genre_count.include?(a)
          @@genre_count[a] += 1
      else
        @@genre_count[a] = 1
        #binding.pry
      end
    end
    return @@genre_count
  end
end
