class Song
  attr_accessor :name, :artist, :genre

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
    uniArray = []
    @@artists.each {|artist| uniArray << artist if uniArray.include?(artist) == false}
    uniArray
  end

  def self.genres
    uniArray = []
    @@genres.each {|genre| uniArray << genre if uniArray.include?(genre) == false}
    uniArray
  end

  def self.genre_count
    uniHash = {}
    @@genres.each {|genre| uniHash.key?(genre) == false ? uniHash[genre]= 1 : uniHash[genre] += 1 }
    uniHash
  end

  def self.artist_count
    uniHash = {}
    @@artists.each {|artist| uniHash.key?(artist) == false ? uniHash[artist]= 1 : uniHash[artist] += 1 }
    uniHash
  end

end
