require 'pry'

class Song

 @@count = 0
 @@artists = []
 @@genres = []
 @@uniq_artists = []
 @@uniq_genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@uniq_artists << @artist unless @@uniq_artists.include?(@artist)
    @@uniq_genres << @genre unless @@uniq_genres.include?(@genre)
    @@genres << @genre



  end

  def new
  end

  def self.count
    @@count
  end

  def self.artists
    @@uniq_artists
  end

  def self.genres
    @@uniq_genres
  end


  def self.genre_count
#
# counts = Hash.new(0)
# @@genres.map { |genre| counts[genre] += 1}
@@genres.group_by(&:itself).map { |k,v| [k, v.length] }.to_h
  end

#   names = ["Jason", "Jason", "Teresa", "Judah", "Michelle", "Judah", "Judah", "Allison"]
# counts = Hash.new(0)
# names.each { |name| counts[name] += 1 }


  def self.artist_count
    @@artists.group_by(&:itself).map { |k,v| [k, v.length] }.to_h
  end


  # def name
  # end

  # def artist=(artist)
  # end
  #
  # def genre
  # end
end
