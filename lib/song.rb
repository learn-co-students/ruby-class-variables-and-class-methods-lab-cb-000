class Song  
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

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
    unique = []
    @@artists.each do |artist|
      unique << artist if !unique.include?(artist)
    end
    unique
  end

  def self.genres
    unique = []
    @@genres.each do |genre|
      unique << genre if !unique.include?(genre)
    end
    unique
  end

  def self.genre_count
    hash = {}
    @@genres.each do |genre|
      if hash[genre] == nil
        hash[genre] = 1
      else
        hash[genre] +=1
      end
    end
    hash
  end

  def self.artist_count
    hash = {}
    @@artists.each do |artist|
      if hash[artist] == nil
        hash[artist] = 1
      else
        hash[artist] +=1
      end
    end
    hash
  end
  
end
