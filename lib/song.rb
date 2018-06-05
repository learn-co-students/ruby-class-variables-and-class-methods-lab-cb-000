class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_reader :name, :artist, :genre

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

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_hash = Hash.new(0)
    @@genres.each {|i| genre_hash[i] += 1}
    genre_hash
  end

  def self.artist_count
    artist_hash = Hash.new(0)
    @@artists.each {|i| artist_hash[i] += 1}
    artist_hash
  end

end



#def self.genre_count
#  genre_hash = {}
#  @@genres.each do |key, value|
#    unless genre_hash.has_key?(key)
#      genre_hash.merge!(key => 0)
#    else
#      genre_hash[key] =
#    end
#  end
#  genre_hash
#end
