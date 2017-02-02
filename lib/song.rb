class Song

  attr_accessor :name
  attr_accessor :artist
  attr_accessor :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count+=1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    unique_artists = []
    @@artists.each do |artist|
      unique_artists << artist unless unique_artists.include?(artist)
    end
    unique_artists
  end

  def self.genres
    unique_genres = []
    @@genres.each do |genre|
      unique_genres << genre unless unique_genres.include?(genre)
    end
    unique_genres
  end

  def self.genre_count
    result = Hash.new(0)
    @@genres.each {|genre| result[genre]+=1 }
    result
  end

  def self.artist_count
    result = Hash.new(0)
    @@artists.each {|artist| result[artist]+=1 }
    result
  end

end
