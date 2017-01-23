class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    hash = {}
    genres.each do |genre|
      hash[genre] = @@genres.count(genre)
    end 
    return hash
  end

   def self.artist_count
    hash = {}
    artists.each do |artist|
      hash[artist] = @@artists.count(artist)
    end
    return hash
  end

end