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
    
    @@count += 1 
    @@genres << genre 
    @@artists << artist
    
  end
  
  def self.count 
    @@count 
  end
  
  def self.genres
    result = [] 
    @@genres.each do |genre|
      result << genre if !result.include?(genre)
    end
    result
  end 
  
  def self.artists
    result = [] 
    @@artists.each do |artist|
      result << artist if !result.include?(artist)
    end
    result
  end
  
  def self.genre_count
    result = {}
    @@genres.each do |genre|
      result[genre] = 0 if result[genre].nil?
      result[genre] += 1 
    end
    result
  end
  
    def self.artist_count
    result = {}
    @@artists.each do |artist|
      result[artist] = 0 if result[artist].nil?
      result[artist] += 1 
    end
    result
  end
end 