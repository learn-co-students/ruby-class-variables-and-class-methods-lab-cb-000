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
    @@genres.push(genre)
    @@artists.push(artist)
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    arr = []
    @@genres.each do |genre|
      arr.include?(genre) ? next : arr.push(genre)
    end
    arr
  end
  
  def self.artists
    arr = []
    @@artists.each do |artist|
      arr.include?(artist) ? next : arr.push(artist)
    end
    arr
  end
  
  def self.genre_count
    count = {}
    @@genres.each do |genre|
      count.include?(genre) ? count[genre] += 1 : count[genre] = 1
    end
    count
  end
  
  def self.artist_count
    count = {}
    @@artists.each do |artist|
      count.include?(artist) ? count[artist] += 1 : count[artist] = 1
    end
    count
  end
  
end