class Song
  attr_reader :name, :artist, :genre

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
    @@genres.uniq!
    @@genres
  end

  def self.artists
    @@artists.uniq!
    @@artists
  end

  def self.genre_count
    my_hash = {}
    @@genres.each do |x|
      if my_hash.has_key?(x)
        my_hash[x] += 1
      else 
        my_hash[x] = 1
      end
    end
    return my_hash
  end

  def self.artist_count
    my_hash = {}
    @@artists.each do |x|
      if my_hash.has_key?(x)
        my_hash[x] += 1
      else 
        my_hash[x] = 1
      end
    end
    return my_hash
  end
  
end