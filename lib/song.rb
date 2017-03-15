require 'pry'
#My Song Class
class Song
  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre #unless @@genres.include?(genre)
    @@artists << artist #unless @@artists.include?(artist)
  end

  attr_accessor :name, :artist, :genre
  def self.count
    @@count
  end

  def self.genres
    genres = []
    @@genres.each{|genre| genres << genre unless genres.include?(genre)}
    genres
  end

  def self.artists
    artists = []
    @@artists.each{|artist| artists << artist unless artists.include?(artist)}
    artists
  end
  def self.genre_count #=> hash {:genre_name => genre_count,...}
    #create historgram - populate hash with genres as keys 
    #increment genre_count for each song of a genre in the hash
    genre_count = Hash.new(0)
    @@genres.each do |genre|
      genre_count[genre] += 1
    end
    genre_count
  end
  def self.artist_count #=> hash {:artist_name => artist_count,...}
    #create historgram - populate hash with artists as keys 
    #increment artist_count for each song of a artist in the hash
    artist_count = Hash.new(0)
    @@artists.each do |artist|
      artist_count[artist] += 1
    end
    artist_count
  end  
end